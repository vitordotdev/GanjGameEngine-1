/*
 Developed by Vitor Felipe Ramos Mello - Copyright © GanjGameStudio - 2023
*/
#pragma once
#define USE_STL_VECTOR 1
#define USE_STL_DEQUE 1

#if USE_STL_VECTOR
#include <vector>
namespace GanjGameEngine::utl
{
	template<typename T>
	using vector = std::vector<T>;

	template<typename T>
	void erase_unordered(std::vector<T> &v, size_t index)
	{
		if (v.size() > 1)
		{
			std::iter_swap(v.begin() + index, v.end() - 1);
			v.pop_back();
		}
		else
		{
			v.clear();
		}
	}
}
#endif

#if USE_STL_DEQUE
#include <deque>
namespace GanjGameEngine::utl
{
	template<typename T>
	using deque = std::deque<T>;
}
#endif


namespace GanjGameEngine::utl
{
	// TODO: Implement our own containers

}