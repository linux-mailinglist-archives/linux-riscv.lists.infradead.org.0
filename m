Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9773163B0A
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 04:23:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sfaJyOLTybqR0wcRksQXUpE/zn256XZxT7vhQ+bdkaU=; b=RUvi0QwuL2mF8GXrJt5YNk++E
	jP6zLNhzzpNQI0w1kUYZVRppnDwLOPz42ET41qpHBRuD1+REYLF356iNG0pdb9SpS0gtE983NQNsB
	BoTYDu6rOfICaZRzq88MxxfV+0SmKerzzEM1dkFyxhs5TsfeOcm7XdsNj37GVv1xx01ronu87r3YK
	5hm7KrwxjsKt1OQDvm1a9JoM2oUREetsKpJWqx1EVsE35ZixgkjFT7kxmh5n0QQNuLttUvLzMLYEs
	37L0tfGlvM6NAKK6WiiAe4SHadxTPO5Q/4b15tjlf//LBggVJo1sPlKw4PvcuSysk0AKdCA/QlzeR
	8GBKPGPGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Fwt-0001G3-3f; Wed, 19 Feb 2020 03:22:55 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Fwq-0001Fb-AA
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 03:22:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so5145158wma.1
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 19:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sfaJyOLTybqR0wcRksQXUpE/zn256XZxT7vhQ+bdkaU=;
 b=uDmXFWXnf56hOs5K5rJk7/rXsq1nJoqSFUWioTEehkzjUO+5MHupZ2k0O5+7cMogWZ
 tLujlPw8jm0JINEyEnU+rqNpbLUxvszcOHfeoMFhS8UZuHra8UT8y940bXfcvdfRt9lW
 1DxJHCxzNDUDgfGl1b3gnOTa5kH7+s6P29EJ8IbDw8jPQYge8Qhh1PjRSbvhQ4V+bhQO
 4gBq0Hg/FGdeEnU/kDLW6i6jNlkqtf+SpyYwD2iK9SNeNVBEd2n/ublFSG47Q8W1tGjS
 Y/q9qtzXizLVB40m6uyRw84LkXdyaZpX1cdohZmm+lcM7G4E4kxZsrDNJaQKfyTkfNJz
 V9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sfaJyOLTybqR0wcRksQXUpE/zn256XZxT7vhQ+bdkaU=;
 b=Q5e9IJlmubwd3K6AbNcSX2u48mEjM59Y7tE5Y3oRlJq7OanYJSPpmHA/eG+s0uDjdX
 nr397jxcVQN/F0rJfMavIR37tSsHXqGImM5MUIgcyChPOrmXbX/ZQDyxfHX7vP+hYyZG
 +Mj/NOsoLH4rHCTzMEKnDD4QonZO8bJzsBEjWdLauSg2FpRBjHzF5vbauBEOFT+E0oXH
 hBAzpoEHP9HlLu6Ovwx7lMp9K2nedvoh7BBdq/qCVpR5+Yg2sNj9qI3ItyTIkbWupCaG
 7dAwu/p1V3X8SKlqaMbr+kJo2oe3MfXn5AJvE1pOmLp4bbV47bHXUzeC+74vvaRnmciZ
 xwQg==
X-Gm-Message-State: APjAAAVdh46kFVKz4wHcdq1iMxPHJ5/iOXrlDFJ2EJpmSPKNDvsX/wK+
 uSZbKXEu+OWFMf6q0MLzD/OMP750xb2rviNuvfphWg==
X-Google-Smtp-Source: APXvYqwpdZAuR0yqwqResXLX6h5jE0qt/FwuFVScUvP5kgWEtYnlnp5loicPr1meqDdLp9fKWagkF34a05iDbQD8A0U=
X-Received: by 2002:a1c:6246:: with SMTP id w67mr6645202wmb.141.1582082569880; 
 Tue, 18 Feb 2020 19:22:49 -0800 (PST)
MIME-Version: 1.0
References: <20191203034909.37385-1-anup.patel@wdc.com>
In-Reply-To: <20191203034909.37385-1-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 19 Feb 2020 08:52:38 +0530
Message-ID: <CAAhSdy0=NHHVvJed733nK+FkprfQ5j7puw1RtsD3Xtg4s2vQjQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] QEMU Virt Machine Kconfig option
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_192252_379057_656E515C 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Palmer,

On Tue, Dec 3, 2019 at 9:19 AM Anup Patel <Anup.Patel@wdc.com> wrote:
>
> This patch series primarily adds QEMU Virt machine kconfig opiton and
> does related RV32/RV64 defconfig updates.
>
> This series can be found in riscv_soc_virt_v2 branch at:
> https//github.com/avpatel/linux.git

The corresponding QEMU patches are now part of QEMU upstream
master branch.

Can you consider this series for Linux-5.6 ??

Regards,
Anup

>
> Changes since v1:
>  - Fixed commit description in PATCH2
>  - Rebased series on latest Linus's master branch at
>    commit 76bb8b05960c3d1668e6bee7624ed886cbd135ba
>
> Anup Patel (4):
>   RISC-V: Add kconfig option for QEMU virt machine
>   RISC-V: Enable QEMU virt machine support in defconfigs
>   RISC-V: Select SYSCON Reboot and Poweroff for QEMU virt machine
>   RISC-V: Select Goldfish RTC driver for QEMU virt machine
>
>  arch/riscv/Kconfig.socs           | 24 ++++++++++++++++++++++++
>  arch/riscv/configs/defconfig      | 17 +++--------------
>  arch/riscv/configs/rv32_defconfig | 18 +++---------------
>  3 files changed, 30 insertions(+), 29 deletions(-)
>
> --
> 2.17.1
>

