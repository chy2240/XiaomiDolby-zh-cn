.class public final Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field final synthetic $state$inlined:Landroidx/compose/material3/TooltipState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TooltipState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1$invoke$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/material3/TooltipState;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$BasicTooltipBox$2$1$invoke$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/material3/TooltipState;

    invoke-interface {p0}, Landroidx/compose/material3/TooltipState;->onDispose()V

    return-void
.end method
