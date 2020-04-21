Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637491B3299
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 00:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fn8gegtQfutb+GZRDGwO8zXw7/LK0B1vDN7+H9ZoeyQ=; b=P2wg7W1Z/nDeB0
	X9ToH+qUE+nRO+OuOD5tHFBANsYUN7mDH20IZ2UkyrSp4G7EOf/X5ZweSJeWEE127XATqHXs/9mWo
	tBNJItlTcc9LgUDxKcduUA/0I3IGyYnphLFZe2SKeU2yGMjL9TaOQvZiKA4coY/4BRqAqlydPoTwh
	j1260oNPa3a7DkADac+wJ9hJdSnlDxOGDtpCvY3lBkPtBZvCBYd0RLyDSImVubdRHJApSxQCJa3GT
	rhMOB2J/o7HuhEdzWV3WWc/xOmy8QCXSt0vEggRPLZltd9npZoUOVau820O7k4HQYK/xGe7C4Zx51
	OcpUDxVC2Q7Akag8ctYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR1Jm-0003Xr-KG; Tue, 21 Apr 2020 22:24:38 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR1Ji-0003WG-Ec
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 22:24:36 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a7so2022672pju.2
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 15:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=fn8gegtQfutb+GZRDGwO8zXw7/LK0B1vDN7+H9ZoeyQ=;
 b=sSIF3zpFBdqSWx4wahrZcytlQEC9A9hqdiugDXvIVJYh6DyAPYcPbnvLILJ5YSqseQ
 4EA8SMPb12sgCUGhQU5TrxDpUUdXNo/g3iXle54Fg4ixdsh8f5+O5F0sqPaywLPAiST3
 lqG0EIHyzOvTO7yIJrf1cw0C0NocTTUy6C8wII6O7DO2dxC+xkGNCw8CtjVyRMG3zAK9
 MGUyyw06XPhfOdlxcwYjOUSHonw3zzBiP5mmZ+Pm96CslCKbUsnxBaiJxR54vYaRkEwk
 yizTQHrje/ExCmBQnFEH6rYbuEpsUappuGemXqH/OHgCNfGzzPCzPCznF46erAKBZOtB
 FaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=fn8gegtQfutb+GZRDGwO8zXw7/LK0B1vDN7+H9ZoeyQ=;
 b=OrnIH02MCbg/YpRdBocQpKJgVln2GB/X60RXJCx6LGZpc0ZavfG5aKvo8fHDshGFmv
 rOWp+cfYsdy48EyS/I2RgW5ur8BIar+Xt1lRKDvvCzGkdtsOLvETLuuJSf0Rlp1jCvGu
 7c8wNE5o78hXCQWVwHZ07l5eITeGVqWJhNYodnH9Y1NilmhwpHzuDzmKw21MvCOOmzcq
 YiGHtvdgtG/cugsuWLv6N+cstMvqUfwurD9cHopsIdib6f329L28IEdW+8Fd9e+mCSZq
 p3LtkRBKfn4m6B64EJmfUfKJkcvTwKfYdXz6Dgldf0ODp4AvpBamuIk3OBTueKeZf7Cw
 Elug==
X-Gm-Message-State: AGi0PuZox94TL8grZZrUPSjZWLWdizLZ5gdkfnAN7sB2dQnw5nHYDvn3
 getg5seLvgSIV8bjayhym6uQ8dlJrxR9MA==
X-Google-Smtp-Source: APiQypKYvNfp+UIjPACqk3OkoUVIKyiN3o3jnBBJK97kmptt/TXneLRnCLFMX9uzz1MZLSAslu0yzQ==
X-Received: by 2002:a17:90a:5a:: with SMTP id 26mr8250927pjb.74.1587507871041; 
 Tue, 21 Apr 2020 15:24:31 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id w66sm3412687pfw.50.2020.04.21.15.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 15:24:30 -0700 (PDT)
Date: Tue, 21 Apr 2020 15:24:30 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 14:08:56 PDT (-0700)
Subject: Re: [PATCH 0/3] K210 support fixes
In-Reply-To: <20200414044326.103884-1-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-14ad9472-18bb-49a3-99f2-a87d176ad9c4@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_152434_511982_0BA7AE19 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 21:43:23 PDT (-0700), Damien Le Moal wrote:
> Palmer,
>
> The first 2 patches of this series are your patches for the builtin DTB
> fixed up and tested. The third patch adds necessary updates to the
> K210 defconfig. Please review.
>
> Damien Le Moal (1):
>   riscv: K210: Update defconfig
>
> Palmer Dabbelt (2):
>   riscv: Allow device trees to be built into the kernel
>   riscv: K210: Add a built-in device tree
>
>  arch/riscv/Kbuild                       |  1 +
>  arch/riscv/Kconfig                      |  5 ++++
>  arch/riscv/Kconfig.socs                 | 17 ++++++++++-
>  arch/riscv/boot/dts/Makefile            |  2 ++
>  arch/riscv/boot/dts/kendryte/Makefile   |  4 ++-
>  arch/riscv/configs/nommu_k210_defconfig |  7 ++---
>  arch/riscv/include/asm/soc.h            | 39 +++++++++++++++++++++++++
>  arch/riscv/kernel/setup.c               |  4 +++
>  arch/riscv/kernel/soc.c                 | 27 +++++++++++++++++
>  arch/riscv/kernel/vmlinux.lds.S         |  5 ++++
>  arch/riscv/mm/init.c                    |  9 ++++++
>  drivers/soc/kendryte/k210-sysctl.c      | 12 ++++++++
>  12 files changed, 125 insertions(+), 7 deletions(-)

Is that PMP thing necessary as well?

I've put these (along with the PMP fix) on for-next.

Thanks!

