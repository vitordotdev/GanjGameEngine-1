/*
 Developed by Vitor Felipe Ramos Mello - Copyright © GanjGameStudio - 2023
*/
#pragma once

#pragma warning(disable: 4530) // Warning disable exception warnings

// C/C++
#include <stdint.h>
#include <assert.h>
#include <typeinfo>
#include <memory>
#include <unordered_map>

#if defined(_WIN64)
#include <DirectXMath.h>
#endif

// Common headers
#include "../Utilities/Utilities.h"
#include "../Utilities/MathTypes.h"
#include "PrimitiveTypes.h"