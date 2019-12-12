#!/usr/bin/env python

# authored by John Hammond
# edited by babysnoop

import SocketServer
import time
import threading

class Service(SocketServer.BaseRequestHandler):
    def handle( self ):
        print "someone connected!"
        
        entered = self.receive()
        
        entered_a = entered.split(" ")
        pin = "77"

        if ( entered_a[0].lower() == "iseo" ):
            if ( len(entered_a) == 1 ):
                self.send( "please supply a command" )
            elif ( entered_a[1].lower() == "location" ):
                if ( len(entered_a) < 3):
                    self.send( "please provide the two digit security pin for this information" )
                elif ( entered_a[2] != pin ):
                    self.send( "incorrect two digit security pin" )
                else:
                    self.send( "25N77W" )
            elif ( entered_a[1].lower() == "fuel-level" ):
                self.send( "33%" )
            elif ( entered_a[1].lower() == "hull-condition" ):
                self.send( "good" )
            else:
                self.send( "please choose one of the available commands" )
        else:
            self.send( "vessel not found\nUsage\n[vessel name] [command] [two digit security pin]\navailabel commands: location, fuel-level, hull-condition" )

    
    def send( self, string, newline = True ):
        if newline: string = string + "\n"
        self.request.sendall(string)
        
        
    def receive( self, promt = " > " ):
        self.send( promt, newline = False )
        return self.request.recv( 4096 ).strip()
    
    
    
class ThreadedService( SocketServer.ThreadingMixIn, SocketServer.TCPServer, SocketServer.DatagramRequestHandler ):
    pass

def main():
    
    port = 1337
    host = '0.0.0.0'
    
    service = Service
    server = ThreadedService( ( host, port ), service )
    
    server.allow_reuse_address = True
    
    server_thread = threading.Thread( target = server.serve_forever )
    
    server_thread.daemon = True
    server_thread.start()
    
    print "Server started on port", port
    
    while ( True ): time.sleep(60)
    
if ( __name__ == "__main__" ):
    main()
