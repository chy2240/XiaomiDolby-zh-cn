.class final Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasicTooltip.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $state:Landroidx/compose/material3/TooltipState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TooltipState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1;->$state:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1;->$state:Landroidx/compose/material3/TooltipState;

    .line 60
    new-instance p1, Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/TooltipState;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
