.class final Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;

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

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 0

    .line 82
    const-string p0, "Clock"

    return-object p0
.end method
