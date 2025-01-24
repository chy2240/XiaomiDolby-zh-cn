.class public abstract Landroidx/compose/ui/platform/InspectableValueKt;
.super Ljava/lang/Object;
.source "InspectableValue.kt"


# static fields
.field private static final NoInspectorInfo:Lkotlin/jvm/functions/Function1;

.field private static isDebugInspectorInfoEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt$NoInspectorInfo$1;->INSTANCE:Landroidx/compose/ui/platform/InspectableValueKt$NoInspectorInfo$1;

    sput-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getNoInspectorInfo()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 23
    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final isDebugInspectorInfoEnabled()Z
    .locals 1

    .line 26
    sget-boolean v0, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled:Z

    return v0
.end method
