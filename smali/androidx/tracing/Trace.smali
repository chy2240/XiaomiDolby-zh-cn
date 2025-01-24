.class public final Landroidx/tracing/Trace;
.super Ljava/lang/Object;
.source "Trace.kt"


# static fields
.field public static final INSTANCE:Landroidx/tracing/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/tracing/Trace;

    invoke-direct {v0}, Landroidx/tracing/Trace;-><init>()V

    sput-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginSection(Ljava/lang/String;)V
    .locals 1

    const-string v0, "label"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v0, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static final endSection()V
    .locals 0

    .line 136
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static final isEnabled()Z
    .locals 1

    .line 71
    sget-object v0, Landroidx/tracing/TraceApi29Impl;->INSTANCE:Landroidx/tracing/TraceApi29Impl;

    invoke-virtual {v0}, Landroidx/tracing/TraceApi29Impl;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private final truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method
