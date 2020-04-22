Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E60E1B4B25
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 18:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9mqquiVcygWnGAe8LUwBa5xsmt35Ej8Z0I3kQLwmuag=; b=tANB1cE6c7MYPJSngug3uhuct
	kv665Kgi7gE/oCQyP4Ojuv4I0GJ3qenH5q+Tb9DVPo5Riwbm64uuG4J6QkDKwxNbWnoEf2hk/mISw
	vZ9kJtMMCXPVOdNw8Cz6Goi1MUlkoBoOSF11SQiIs4IlEkgUvL0HXwToFNy86alLv6swXQJwKGthl
	CiJ0Bh/bS6wDxchCpFHyC46h6+dNlVAdOULfFOtErh7K3/HdnsAUx/qN2LBpeuRqHam/EkYukgcfF
	ydrJIzfWrtKvY7npnuytduTR0J44Y3fXFFSiYxml6tscSThOjbgXq0H3oqIZRhvwTwUxud7QNNh2e
	nBVSS65zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIi8-0002w1-EW; Wed, 22 Apr 2020 16:58:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRIi5-0002v9-CF
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 16:58:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id i10so3281047wrv.10
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 09:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9mqquiVcygWnGAe8LUwBa5xsmt35Ej8Z0I3kQLwmuag=;
 b=MdnHUcv64HN5P2paAgmF7FpHMBHLj3SVS3ekxOILA9FYJX0w0xcQ49b/3HYuX0ED4l
 zCp605tpP8n7Zq2vZV31NTqDeLkkTKiQV58F99ZzMrzVLP7C50Tv5phL/WfNQZZZkdh2
 L1o/9ftmxCrluzdLUHTagZ9csF/EXnRYEd2mlPFDQG6Uq04gmBdR+MAstmZadeLFbNKJ
 FDqsibKF/11yunWWa5S/lo/H8VIf18uerFKVQ354Ee6+HKKHjuMTd7jT3WTmchYMcTjX
 GJTmyEngURuIfKIpQRzr4EocmnH7jS24qlJm0LmIsHXdantLsvLLQn2l0+QYsHg4AJc2
 vdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9mqquiVcygWnGAe8LUwBa5xsmt35Ej8Z0I3kQLwmuag=;
 b=enemXYZMkAoXs2+0WUjj++IdvMU84T3k7WhtTxH9HP0k3TLqtJrRCyL8v3/t3x/UrX
 ICOv2j6ybRDewWCKDuig6ORaOVTuxtHfngg0EZ4iv1FwVnuWDkYlg/TFsnxxfNCQJ1/X
 zNrlhwkPt7otg2U54clt74wKnH9N2ot/PN4AZrgKu1Qs+OQ6fqCpaTemrRqM9WSfHA3N
 xII7lKO1aOKpO10fWRohFoSe5gAy8Jc1R+SBkgwIYBzRmEl4epiFciTngFPg0PB5SLjq
 yUi1vOAn/jw5FgRfUHzH8tqWi6uy20MP792y7GXdQEcqjRRCYKExal5Hb545IrggTot+
 cMXA==
X-Gm-Message-State: AGi0Pub4k5fyTToHkIyuhKwW/jvLrTtknOB2kVFpYtIEUqyy0/UXOAuK
 STwedytcyvpRX6uQ9/TWlL572geTHS0NjyKEA+H4
X-Google-Smtp-Source: APiQypL35f3yp0Sh/YOVDbSWIdl5rWSSsxAVzUUsMsoUzLxL1j4I0uQSI/iJo4gpWivmTuckYp0Ex0gBRJDOdYQgfT4=
X-Received: by 2002:adf:e3ca:: with SMTP id k10mr32880003wrm.53.1587574731858; 
 Wed, 22 Apr 2020 09:58:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200422165537.26883-1-laanwj@gmail.com>
In-Reply-To: <20200422165537.26883-1-laanwj@gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Wed, 22 Apr 2020 09:58:40 -0700
Message-ID: <CAOnJCULhZMaB5nR7rROJzmYtB_qJQ8z+j1sTFCDtApRvbTd1WA@mail.gmail.com>
Subject: Re: [PATCH] riscv: disable ARCH_HAS_STRICT_KERNEL_RWX for nommu builds
To: "Wladimir J. van der Laan" <laanwj@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_095853_564866_CFE1A379 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Wladimir J. van der Laan" <laanwj@protonmail.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 9:56 AM Wladimir J. van der Laan
<laanwj@gmail.com> wrote:
>
> From: "Wladimir J. van der Laan" <laanwj@protonmail.com>
>
> For non-MMU systems, which tend to be low-memory SoCs such as the K210,
> it's expensive to align sections to 2MB. Besides that, the security
> guarantees cannot be made anyway.
> ---
>  arch/riscv/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 62f7bfeb709eb1cdabaccce261320dd0191b3c48..74f82cf4f7816b99fc54155fd40dcf4d40cbf956 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -60,7 +60,7 @@ config RISCV
>         select ARCH_HAS_GIGANTIC_PAGE
>         select ARCH_HAS_SET_DIRECT_MAP
>         select ARCH_HAS_SET_MEMORY
> -       select ARCH_HAS_STRICT_KERNEL_RWX
> +       select ARCH_HAS_STRICT_KERNEL_RWX if MMU
>         select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>         select SPARSEMEM_STATIC if 32BIT
>         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> --
> 2.17.1
>
>

This fix is already available in the mailing list from Damien.
https://patchwork.kernel.org/patch/11485305/

-- 
Regards,
Atish

