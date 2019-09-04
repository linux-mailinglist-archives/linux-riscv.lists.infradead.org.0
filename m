Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750EFA8684
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D6xrAOPwQwMJYIV6imd9eedQXMBAi7pywEW0BTLI/g=; b=AJwIA+o2Eg7ifz
	UFZ0gqNs5k5OuVBB8fw/mT6NM68O/sWy5PLN0DwGNr7MlEN0iUn+7dYi7abze26PkhxU/f5UQPFBb
	DLQbvaQoQW5FjGkFzHw/GgDm5n0CxDiH+Qd48CDwHmAYs/JR1kiqgCLIO9vZXDeO5g6Lxr+75w0WV
	kmVJjJgVusgbXxEsKIZcHGw2f4pX6YXXLF+fJVXUjc5XjUSZf8TsQSWTpUvQ6/7IvcaHI8GraJGH6
	MdMue40cuTvSp4wl+VPzTuStL+lGmPrh1+boEmgElddziUpN0rBJub7awgj9/BnTrlyLnX7y1qqHr
	hAxl4RBSfVA806dPAS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xyr-0004b7-EQ; Wed, 04 Sep 2019 16:18:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xyk-0004VM-Ht
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:17:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id c10so3992758wmc.0
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 09:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rtzMO9oNYcqZ7xJCU1SqvD7PjblQqbDV29Zyklt+ON0=;
 b=Ncsm1Yid1oE4dNBUtEf93AxZ82UtQoJXxFdx0JoIxtdJEmRAih94AH5ZwIg0s+WCim
 AwYZNcE2ZXCEwyjlpNBFvd4eWLy16pliyRkGzd8PNAwAYTrAFCsTSd4oR+h1O5QNnMQW
 kGJPudKVYmlPaqsgdMx26QCxk9FkD6ft+jCl3F/yHrpccmJzCYpWz1oD2Vxhih6imE3M
 /b3Pu4IZDf3U8jGi3dM3ShEAaISjTKjmJHBIATpOUpkQE1bYfhdAOI8eURLyug8cj1q5
 2OT2bCy7l9JwDwuo/2v2svut0t96JXYsa7UZXE1mr1Imahm0LRqbw997Y6zCI3Yplb2A
 TAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rtzMO9oNYcqZ7xJCU1SqvD7PjblQqbDV29Zyklt+ON0=;
 b=Bkj5Nv2JsGICH6hrXl46pB5BpH5Zs6abo3hMc5JylJNDK5GnNg5byDVEl2dHa2rEsI
 SI4nbxT9LBn23fxIqqAZeL7NCvjrncibSGIpKMU4cqWnufTJYlznEsMxJX21A/x8eNSq
 eK0VtWa1qxYqcN5OA3zHhvDLlLpyZYteAq+PlMSQnfQvcU1YAsTcxtNwobhZcNT3RaUF
 dazzE19OUnm5ezghhKiurM1/UNk0u6K9YoWWL6ar09TlmD+5IXPzH6rf7pvgZpUs4bWI
 LIgC9hYrKlT5Hg50Qo8bksg/cGub6LFrn+HS0uERRqdZA/GwHQS8O3SMhNgxoSSxuP6O
 TgwQ==
X-Gm-Message-State: APjAAAWrZx0Cn0MBU7BPPUvMT3CWQufBZyC6AgSgAZ4YNRnTQEdJEzKj
 IWUaKCjz7sCuQKceoUG0q/aAFTT0uDql4EXb3GHdKA==
X-Google-Smtp-Source: APXvYqzX6gugStutxIYe+ILprg2riVCAyjyyZH0V55aDRXJiZFZxndYKFUqntyVHZGA5c108ncLvJ8fFq0NR4omyyd4=
X-Received: by 2002:a1c:c909:: with SMTP id f9mr5262027wmb.52.1567613871859;
 Wed, 04 Sep 2019 09:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-3-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-3-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Sep 2019 21:47:40 +0530
Message-ID: <CAAhSdy3G9NOuNRhiYUgxmvNBfs79gAgSWdBrw4s=+SZBEDhVfg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Enable KVM for RV64 and RV32
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091754_669508_7876F8CD 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Palmer Dabbelt <palmer@sifive.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 9:43 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>
> DO NOT UPSTREAM !!!!!
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/configs/defconfig      | 2 ++
>  arch/riscv/configs/rv32_defconfig | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 420a0dbef386..320a7f1da4fc 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -16,6 +16,8 @@ CONFIG_EXPERT=y
>  CONFIG_BPF_SYSCALL=y
>  CONFIG_SOC_SIFIVE=y
>  CONFIG_SMP=y
> +CONFIG_VIRTUALIZATION=y
> +CONFIG_KVM=y
>  CONFIG_MODULES=y
>  CONFIG_MODULE_UNLOAD=y
>  CONFIG_NET=y
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index 87ee6e62b64b..6223e47cc5f0 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -16,6 +16,8 @@ CONFIG_EXPERT=y
>  CONFIG_BPF_SYSCALL=y
>  CONFIG_ARCH_RV32I=y
>  CONFIG_SMP=y
> +CONFIG_VIRTUALIZATION=y
> +CONFIG_KVM=y
>  CONFIG_MODULES=y
>  CONFIG_MODULE_UNLOAD=y
>  CONFIG_NET=y
> --
> 2.17.1
>

Please ignore this patch.

The KVM RISC-V should be disabled by default since it's
experimental currently.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
