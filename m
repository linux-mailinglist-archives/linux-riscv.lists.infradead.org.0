Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C605579C93
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 00:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADIaRxK2nV388HPsDM8qirrO9APUPDs3bG4Xw/0NJ94=; b=mrgkTNgZrK+tMD
	rtkAFgDQzomt+oP68sVNS2A7BFM+fh8cudI+QIEHTk0baIt/ClaY9tn799176qIO+f2YaV6QaB9Rg
	W0+tdKpOmpSA3QnltDUDjqBUWum4Uy9StTthrKoako533IfPw3y/QGaGEvXEnh5uiNGafj0ncfrb3
	i8aoVXtJgp+Vm+XaBAICUkATdKQlQkgni0gxdAHVMfPFs6XskwuRmPbYn8OcEB1ef/aGRIa4gsCgo
	ZRcoJR2czAe0V7DWjhH9p80+irAxERt9hLUiqmqr5BT2h4YmnoFsrbIBEmWb8h78Tl/YoxN/PtW/P
	VvHvYhuBe6SjqJSG2aag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsEbQ-0001MT-7V; Mon, 29 Jul 2019 22:58:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsEbM-0001MB-LT
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 22:58:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id a15so55285284wmj.5
 for <linux-riscv@lists.infradead.org>; Mon, 29 Jul 2019 15:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VyT6vczGgp+5y0+MlZ3B5imsfW3LBCbI3YmCh+dVTwI=;
 b=mvUr2bnbs7VYmZ2YFRAe3YYbTDj+0CZ52dZFcBRFHfeACVlyJZv++1BGzcDm9jGT5I
 HWPEJJ/qyA64hUITFxHhQ48JBAMSCb/ZDFsRQWAJjgIwp4XuEdKf3LYqVRThYj/dTrhP
 gJ/pwbK29I2JvZyDa74xBfWT78AG0+dKVG2snVMdC+U0lcLx85289qq/6WjbZJcMYQyr
 0OjUwRmaatpYhzfL9sH9AGeOQBXsMdcdwflxQfH+jgJQkTdqPl38LrMuSdkjP3IJNp4Y
 oa6YtyqIrQ72quF11NQTSlEVVY0GclPJmc9nt7+G/FIkNZuyD+X2+l2Rx4CuIyUQhhG7
 nYSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VyT6vczGgp+5y0+MlZ3B5imsfW3LBCbI3YmCh+dVTwI=;
 b=hgs2WZCDZhHBF/2UZfDIpuU1sdeVU6kFqWRTzJAgXs7zeJycokWiMSnZBd8fIANp2d
 MeEjrX190K0E+fBcH1UihqxcFj0E9yruNqKuVTbpHZayWFEIxToq0uWdM3piwB5mwqNQ
 N8oqE5ppEHtgH0REaVJaqeTH1JYCU9n6adneNBxP9YLCTNuCyB8NNJ5DsPlKMo3j+wdR
 gTbNYRJ3qt6qP4x1EaVSX65Z2+68TH8A6rG2Taw2yIab3bXC4fAr6XjmLWmVxMCRnqfK
 +TJNfOGdtG9TLOYJohL+UdTEEqOtiUmuBuXBoaMMuuXsKgyhcMVSelhVRziOWgviniqa
 AoOw==
X-Gm-Message-State: APjAAAWy8OoXHCAoWgozc2jAxnceG7MxhJjC/VmQpyolDgbmVc/0kUiG
 g0CCYuqr341gNSd/hgvnClOPZFxSs02U9dfX+SjVg+w3
X-Google-Smtp-Source: APXvYqz6nLsYfEZwOIEyEAgEVmu0DxkVhcn48HtboXBqIRTyIK7AHZYBVfOR+LMtXwsL5cgI9tRKAxtj+gcoRLU7plA=
X-Received: by 2002:a1c:9cd1:: with SMTP id
 f200mr98706049wme.157.1564441120926; 
 Mon, 29 Jul 2019 15:58:40 -0700 (PDT)
MIME-Version: 1.0
References: <mvm8sshcdwc.fsf@suse.de>
In-Reply-To: <mvm8sshcdwc.fsf@suse.de>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Tue, 30 Jul 2019 01:58:04 +0300
Message-ID: <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
Subject: Re: Random memory corruption with v5.2
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_155844_731954_D1D9EF6B 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de> wrote:
>
> Since switching to 5.2 kernels I'm seeing random crashes and
> misbehaviors on the HiFive, for example while building gcc or glibc.
> Perhaps missing TLB flushes?

Do you have some examples of crashes?

I am running 5.2-rc7 on a large number QEMU instances for builders,
and I see some strange behavior, but I haven't noticed any issues
on the board using OpenEmbedded build with the final 5.2 yet.

[17983.074847] Unable to handle kernel paging request at virtual
address 0fffffdff5e14700
[17983.085132] Oops [#1]

[133953.710130] kernel BUG at include/linux/mm.h:1023!
[133953.718204] Kernel BUG [#1]

[165770.567652] Unable to handle kernel NULL pointer dereference at
virtual address 0000000000000010

[148578.912479] kernel BUG at lib/list_debug.c:51!
[148578.917701] Kernel BUG [#1]

[163756.869949] EXT4-fs (vda2): pa 00000000e9971722: logic 512, phys.
2558464, len 512
[163756.889549] EXT4-fs error (device vda2):
ext4_mb_release_inode_pa:3837: group 78, free 0, pa_free 149
[163757.757600] EXT4-fs (vda2): pa 0000000066b479c3: logic 32, phys.
2558368, len 96

sbi_trap_error: hart1: misaligned store handler failed (error -10)
sbi_trap_error: hart1: mcause=0x0000000000000006 mtval=0x00000000000002c3
sbi_trap_error: hart1: mepc=0xffffffe0009dc1f4 mstatus=0x0000000000000802
sbi_trap_error: hart1: ra=0xffffffe0009dc1ee sp=0xffffffe1f3c17be0

[178876.406122] Unable to handle kernel paging request at virtual
address 0000000000012a28
[178876.423941] Oops [#1]

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
