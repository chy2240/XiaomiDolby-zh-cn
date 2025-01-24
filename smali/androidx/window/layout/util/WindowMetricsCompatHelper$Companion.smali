.class public final Landroidx/window/layout/util/WindowMetricsCompatHelper$Companion;
.super Ljava/lang/Object;
.source "WindowMetricsCompatHelper.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelper$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/window/layout/util/WindowMetricsCompatHelper$Companion;

    invoke-direct {v0}, Landroidx/window/layout/util/WindowMetricsCompatHelper$Companion;-><init>()V

    sput-object v0, Landroidx/window/layout/util/WindowMetricsCompatHelper$Companion;->$$INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelper$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Landroidx/window/layout/util/WindowMetricsCompatHelper;
    .locals 0

    .line 65
    sget-object p0, Landroidx/window/layout/util/WindowMetricsCompatHelperApi34Impl;->INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelperApi34Impl;

    return-object p0
.end method
