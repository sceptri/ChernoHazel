#pragma once

#ifndef APPLICATION_H
    #include "Application.h"
#endif

#ifndef LOG_H
    #include "Log.h"
#endif

#ifdef HZ_PLATFORM_WINDOWS

extern Hazel::Aplication* Hazel::CreateApplication();

int main(int argc, char ** argv)
{
    auto app = Hazel::CreateApplication();
    app->Run();
    delete app;
}
#else
extern Hazel::Application* Hazel::CreateApplication();

int main()
{
    Hazel::Log::Init();
    HZ_CORE_WARN("Initialized Log!");
    int a = 5;
    HZ_INFO("Hello! Var = {0}", a);

    Hazel::Application* app = Hazel::CreateApplication();
    app->Run();
    delete app;
}
#endif
