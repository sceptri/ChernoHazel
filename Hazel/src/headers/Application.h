#pragma once
#ifndef APPLICATION_H
    #define APPLICATION_H
#endif

#include "Core.h"

namespace Hazel
{
    class HAZEL_API Application
    {
    public:
        Application();
        virtual ~Application();

        [[noreturn]] void Run();
    };

    //To be defined in CLIENT
    Application* CreateApplication();
}
