.class public final Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;
.super Ljava/lang/Object;
.source "SaveableStateRegistry.kt"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $valueProvider:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProvider:Lkotlin/jvm/functions/Function0;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unregister()V
    .locals 2

    .line 131
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    invoke-static {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->access$getValueProviders$p(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->this$0:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    invoke-static {v1}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->access$getValueProviders$p(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
