import zmq
import time

context = zmq.Context()
socket = context.socket(zmq.REP)
socket.bind("tcp://*:5555")

while True:
    message = socket.recv()
    print("Received request: %s" % message)

    time.sleep(1)

    socket.send(b"work")
