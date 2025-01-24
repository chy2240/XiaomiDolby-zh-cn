.class public final Landroidx/compose/material3/SliderState$dragScope$1;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/DragScope;


# instance fields
.field final synthetic this$0:Landroidx/compose/material3/SliderState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SliderState$dragScope$1;->this$0:Landroidx/compose/material3/SliderState;

    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragBy(F)V
    .locals 0

    .line 2028
    iget-object p0, p0, Landroidx/compose/material3/SliderState$dragScope$1;->this$0:Landroidx/compose/material3/SliderState;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->dispatchRawDelta(F)V

    return-void
.end method
