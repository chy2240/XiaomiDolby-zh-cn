.class public final Landroidx/savedstate/SavedStateRegistryController$Companion;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.android.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;
    .locals 1

    const-string p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p0, Landroidx/savedstate/SavedStateRegistryController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/savedstate/SavedStateRegistryController;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
