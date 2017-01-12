﻿module smartref.util;

import std.traits;
import std.typecons;

template Pointer(T) {
	static if(is(T == class) || is(T == class)){
		alias Pointer = T;
	} else {
		alias Pointer = T *;
	}
}

template isInheritClass(T, Base)
{
	enum FFilter(U) = is(U == Base);
	enum isInheritClass = (Filter!(FFilter, BaseTypeTuple!T).length > 0);
}