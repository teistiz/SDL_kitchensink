#include "kitchensink/internal/kitlibstate.h"

static Kit_LibraryState _librarystate = {0, NULL};

Kit_LibraryState* Kit_GetLibraryState() {
    return &_librarystate;
}
