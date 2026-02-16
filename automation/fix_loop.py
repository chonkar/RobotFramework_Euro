import nest_asyncio
import asyncio

# This initializes the loop that the Selfhealing Library is looking for
try:
    asyncio.get_event_loop()
except RuntimeError:
    asyncio.set_event_loop(asyncio.new_event_loop())

nest_asyncio.apply()

class fix_loop:
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'