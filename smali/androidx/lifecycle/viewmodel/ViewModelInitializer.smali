.class public final Landroidx/lifecycle/viewmodel/ViewModelInitializer;
.super Ljava/lang/Object;
.source "InitializerViewModelFactory.android.kt"


# instance fields
.field private final clazz:Lkotlin/reflect/KClass;

.field private final initializer:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->clazz:Lkotlin/reflect/KClass;

    .line 27
    iput-object p2, p0, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->initializer:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getClazz$lifecycle_viewmodel_release()Lkotlin/reflect/KClass;
    .locals 0

    .line 26
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->clazz:Lkotlin/reflect/KClass;

    return-object p0
.end method

.method public final getInitializer$lifecycle_viewmodel_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 27
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->initializer:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
