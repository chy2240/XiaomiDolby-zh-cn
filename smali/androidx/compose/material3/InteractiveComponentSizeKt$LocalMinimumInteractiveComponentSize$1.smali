.class final Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentSize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InteractiveComponentSize.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentSize$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentSize$1;

    invoke-direct {v0}, Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentSize$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentSize$1;->INSTANCE:Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentSize$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0}, Landroidx/compose/material3/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentSize$1;->invoke-D9Ej5fM()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-D9Ej5fM()F
    .locals 0

    const/16 p0, 0x30

    int-to-float p0, p0

    .line 152
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method
