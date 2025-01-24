.class public abstract Landroidx/lifecycle/viewmodel/internal/ViewModelProviders_jvmKt;
.super Ljava/lang/Object;
.source "ViewModelProviders.jvm.kt"


# direct methods
.method public static final getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
