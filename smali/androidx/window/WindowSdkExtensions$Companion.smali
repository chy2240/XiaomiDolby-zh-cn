.class public final Landroidx/window/WindowSdkExtensions$Companion;
.super Ljava/lang/Object;
.source "WindowSdkExtensions.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/window/WindowSdkExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Landroidx/window/WindowSdkExtensions;
    .locals 1

    .line 83
    invoke-static {}, Landroidx/window/WindowSdkExtensions;->access$getDecorator$cp()Landroidx/window/WindowSdkExtensionsDecorator;

    move-result-object p0

    new-instance v0, Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    invoke-direct {v0}, Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;-><init>()V

    invoke-interface {p0, v0}, Landroidx/window/WindowSdkExtensionsDecorator;->decorate(Landroidx/window/WindowSdkExtensions;)Landroidx/window/WindowSdkExtensions;

    move-result-object p0

    return-object p0
.end method
