.class public final Landroidx/tracing/TraceApi29Impl;
.super Ljava/lang/Object;
.source "TraceApi29Impl.kt"


# static fields
.field public static final INSTANCE:Landroidx/tracing/TraceApi29Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/tracing/TraceApi29Impl;

    invoke-direct {v0}, Landroidx/tracing/TraceApi29Impl;-><init>()V

    sput-object v0, Landroidx/tracing/TraceApi29Impl;->INSTANCE:Landroidx/tracing/TraceApi29Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 0

    .line 34
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p0

    return p0
.end method
