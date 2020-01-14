Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05BC13A021
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Jan 2020 04:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CTJ2coo4RHoH/lJGEL6/xkagWbBVDH7gBcZR8SjOkz8=; b=GbUOvaZhkOVdqDmhElcxnJPV8
	AlaSg0MlIVAqyll8BcBF8fVK46wLGPcVwUdQf56X6wqckLe0B2DCaVRfE3gIeLPieUG7Qe/KdbwiM
	L+D0ZFvI5kP43G/KN5kgY0ULy2Wd747CiGVpW47QgXEoDhrTvzBFjXjyJlq7TIh8CtkxLYAHsCezj
	WyCI5R5faOLqkq7QdqtleKGrDgha4bPI6wrBh93W3ZowdifdcRLwaB2yx89w1CQcUUaW6ti3yQdU6
	OC1R1QON+ffq6yqrIHm7nULxz8NwzpVHXBb3LbZdQ9l08iQIMkl3uMlciXHBkok2rTY+UXi7wuKL4
	TPrh8nDcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irDC2-00026G-LA; Tue, 14 Jan 2020 03:48:38 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irDBy-00025W-Qq
 for linux-riscv@lists.infradead.org; Tue, 14 Jan 2020 03:48:36 +0000
Received: by mail-qk1-x741.google.com with SMTP id r14so10871976qke.13
 for <linux-riscv@lists.infradead.org>; Mon, 13 Jan 2020 19:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CTJ2coo4RHoH/lJGEL6/xkagWbBVDH7gBcZR8SjOkz8=;
 b=nQc8qxdX/AeOVnGOFlRCgCYp1v+Q9S3HUvIYqgb2rMKCYn9H5NsgVRHIHo5c7toLey
 TL4BEKQxXsuUYLj7+4+xMp3q50jmsSvEjvG+9J0yvLmS8T2iQrpzs2qY9wRhbRKmCJxn
 qhL8WI1HWHG9fPkkH8HxV/eOlqTHBINXjp0kFBOeruRYTz/qagED/LKtJMr+FJECKcye
 axHnG/a53UeioPdkcDOXPDm5WZygoCFWZYwZpEcMGe9FJhkcook5Z5qNfC7miQ2HUWte
 nB5mIAF0jz0sjypPQprD8RerGyQAys+ZI5JkALp+Xx77+fFJp+XHYzq6w+NKG6SkW/jn
 6+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CTJ2coo4RHoH/lJGEL6/xkagWbBVDH7gBcZR8SjOkz8=;
 b=O/IxPhg6SeAcCCPHJKMorRpUTByceR9Q4XSO/XDqVYMn4NWWx+n+Ic6g615YCH7Vny
 1Yo1YSJfbBmg32O9vs9Ui4UU25NGI2dnGV9MQ2TtDwgDgPRCCXaXkLhjb7cibzcnTSEV
 YjAalglO0sqdctmLLbi/T7FNNmer0RNA3VSzcs4xPLNwV6LvIMmofRLbmG15n9ATL9ze
 VpQyQt+IuPSKvhqTQuPuic0/rfL+1bc7Oaqda9i03NQf61FCkPK1CmKFalSElEmptxr+
 0IoIHfxTaoTN/yvm+AEOz3XIrP1ziVS5W3sZYRA471wbyhCpzUZv3nKAi38XyF59XO4g
 uZZQ==
X-Gm-Message-State: APjAAAVJxisV5Wy9MVQ3qBqaqcuvuRK1GWbc+BN0qoQhGEaJm1h9S/dY
 Q1Uv62W6SnPNLm8OQ4f8AnEv33MhBSseQsh/lUfFzQ==
X-Google-Smtp-Source: APXvYqzDpb9Yyqx7bCFNZvCTSYvZ5WdMj+Wq11S0hKuv/ey3nRFiCF4ih93/7FilTGOzb44QaMjq/NvjhXCEP9VwNiA=
X-Received: by 2002:ae9:c018:: with SMTP id u24mr19621044qkk.339.1578973713171; 
 Mon, 13 Jan 2020 19:48:33 -0800 (PST)
MIME-Version: 1.0
References: <20200109031516.29639-1-greentime.hu@sifive.com>
 <alpine.DEB.2.21.9999.2001091126480.135239@viisi.sifive.com>
 <alpine.DEB.2.21.9999.2001121011100.160130@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.2001121011100.160130@viisi.sifive.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Tue, 14 Jan 2020 11:48:21 +0800
Message-ID: <CAHCEehKchrwd7TTmSrhtEPeCmkrYrx7TX_c6ogpCpSkCKnBQoQ@mail.gmail.com>
Subject: Re: [PATCH v3] riscv: make sure the cores stay looping in
 .Lsecondary_park
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_194835_089628_8D74A995 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Cc: Andreas Schwab <schwab@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gt <green.hu@gmail.com>,
 Anup Patel <anup@brainfault.org>, greentime@kernel.org,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Mon, Jan 13, 2020 at 2:12 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Greentime,
>
> On Thu, 9 Jan 2020, Paul Walmsley wrote:
>
> > On Thu, 9 Jan 2020, Greentime Hu wrote:
> >
> > > The code in secondary_park is currently placed in the .init section.  The
> > > kernel reclaims and clears this code when it finishes booting.  That
> > > causes the cores parked in it to go to somewhere unpredictable, so we
> > > move this function out of init to make sure the cores stay looping there.
> > >
> > > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> > > Reviewed-by: Anup Patel <anup@brainfault.org>
> >
> > Thanks, the following is what's been queued for v5.5-rc.
>
> During final testing, when building the kernel with an initramfs, I hit
> the following linker error:
>
>   LD      .tmp_vmlinux1
> arch/riscv/kernel/head.o: in function `.L0 ':(.init.text+0x5c): relocation truncated to fit: R_RISCV_JAL against `.Lsecondary_park'
> make[1]: *** [Makefile:1079: vmlinux] Error 1
> make: *** [Makefile:326: __build_one_by_one] Error 2
>
> Could you take a look at this?

I think it is because the sections are too far for bqeu to jump and
the config I used just small enough for it to jump so I didn't see
this bug. Sorry about that.
I tried this fix to boot in Unleashed board.

 #ifdef CONFIG_SMP
        li t0, CONFIG_NR_CPUS
-       bgeu a0, t0, .Lsecondary_park
+       blt a0, t0, .Lgood_cores
+       tail .Lsecondary_park
+.Lgood_cores:
 #endif

