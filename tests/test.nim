import staticglfw

# Init GLFW
if init() == 0:
  var desc: cstring
  getError(desc.addr)
  raise newException(Exception, "Failed to Initialize GLFW: " & $desc)

# Open window.
var window = createWindow(800, 600, "GLFW3 WINDOW", nil, nil)
# Connect the GL context.
window.makeContextCurrent()

# Swap buffers (this will display the red color)
window.swapBuffers()

# Check for events.
pollEvents()
# If you get ESC key quit.
if window.getKey(KEY_ESCAPE) == 1:
  window.setWindowShouldClose(1)

# Destroy the window.
window.destroyWindow()
# Exit GLFW.
terminate()
