Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EE11B4AB2
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 18:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cvWobKdpz5yLo5xmbq4pZI4GJbJveXVdGZHqLrOQStc=; b=l4XjIRgKowGxb/vO6mNCH7dHJ
	LvrNYVKlOaK6Ow7w4dfX1nw1QIiBF0gwykHnUJwEKkNbqoDyG41wYDbef+UIUcimo9pXhZfSEeqeZ
	JVGHhVWuqUY/QulIMzkhsTYB8UgycT1s3rzFkMAFcAjrbelMsL1JmpdJQtM3lyH3QQOErjSy8qj0I
	PPuF38gcva/PV0E0CAtifnECB/roJRKrZ97iQ60YQsim+yRg+ewjF7bS6wwNCPB+fxhN6cVQsxbqQ
	hKdHyxPEFTLy476wdbYDn70KVd3dFuMnH06jK+nCCbTMxK+655PjUGgz4wc4hCpCSK037pLJvJyqU
	vr/iyxlDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIPM-0003o5-EI; Wed, 22 Apr 2020 16:39:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRIPJ-0003nJ-K2
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 16:39:31 +0000
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FFCA2082E
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 16:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587573569;
 bh=2rmDWww6rHau1JQr0OtwOsytcBhyKnLhZgMaxwDb5pk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IDdy+xsDxWGQDq0yE5KuRWhZLri9WYXQm5wMtacNPEfeTJVbqvsyJa4Z6tIQpURno
 LEQLMMHaMdO9C85oQhOYCV1F+Rj4+wBrIp4m6jtOLH+0ivmx/Qk19CUqc3QXZ2N649
 QA19N8U8TVbIdywAO21NstaMQ1l7XYQj8hKFMJDo=
Received: by mail-il1-f176.google.com with SMTP id i16so2538714ils.12
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 09:39:29 -0700 (PDT)
X-Gm-Message-State: AGi0PuY92RmuFOHD/AYAWBswuZlV80t4JI6Qn3IiV2pgDgHbmttfVi1N
 nWbtBbRPKCuxQevbPUJc+anIaDtkH4npHaDaDuc=
X-Google-Smtp-Source: APiQypKyqgCn3vKrlX0X8msYPbgz4jhNTQCAHufT+5l+uzBP2FrPCjFC+hPYuzn8+fMuaBgej1tcbMGsnUpTH2pprh0=
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr27302801ili.211.1587573568568; 
 Wed, 22 Apr 2020 09:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXEXTq8RhD-AM4i3ZmXRcLDTW8waNDbWNa0V8V1nz4zb_A@mail.gmail.com>
 <mhng-2320bbe6-c880-40f4-914e-a6209d0f2f95@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-2320bbe6-c880-40f4-914e-a6209d0f2f95@palmerdabbelt-glaptop1>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 22 Apr 2020 18:39:17 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG6KG7L5kopUMyY-DCkURfRZYDvOVU9+U=+eiktXfhrvg@mail.gmail.com>
Message-ID: <CAMj1kXG6KG7L5kopUMyY-DCkURfRZYDvOVU9+U=+eiktXfhrvg@mail.gmail.com>
Subject: Re: [v4 PATCH 0/3] Add UEFI support for RISC-V
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_093929_698851_D03C10AD 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 at 22:59, Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 21 Apr 2020 00:24:04 PDT (-0700), ardb@kernel.org wrote:
> > On Tue, 21 Apr 2020 at 05:34, Atish Patra <atish.patra@wdc.com> wrote:
> >>
> >> This series adds UEFI support for RISC-V. Currently, only boot time
> >> services have been added. Runtime services will be added in a separate
> >> series. This series depends on some core EFI patches
> >> present in current in efi-next and following other patches.
> >>
> >> U-Boot: Adds the boot hartid under chosen node.
> >> https://lists.denx.de/pipermail/u-boot/2020-April/405726.html
> >>
> >> Linux kernel: 5.7-rc1
> >>
> >> OpenSBI: master
> >>
> >> Patch 1 just moves arm-stub code to a generic code so that it can be used
> >> across different architecture.
> >>
> >> Patch 3 adds fixmap bindings so that CONFIG_EFI can be compiled and we do not
> >> have create separate config to enable boot time services.
> >> As runtime services are not enabled at this time, full generic early ioremap
> >> support is also not added in this series.
> >>
> >> Patch 4 and 5 adds the PE/COFF header and EFI stub code support for RISC-V
> >> respectively.
> >>
> >> The patches can also be found in following git repo.
> >>
> >> https://github.com/atishp04/linux/tree/wip_uefi_riscv_v4
> >>
> >> The patches have been verified on Qemu using bootefi command in U-Boot.
> >>
> >> Changes from v3->v4:
> >> 1. Rebased on top of efi-next.
> >> 2. Dropped patch 1 & 2 from this series as it is already queued in efi-next.
> >> Changes from v2->v3:
> >> 3. Improved handle_kernel_image() for RISC-V.
> >>
> >
> > Thanks Atish. This looks nice and simple now.
> >
> > I will need an ack from the RISC-V maintainers on these, and it is up
> > to them to consider whether the changes to core kconfigs and makefiles
> > are likely to cause trouble or not. If so, I am happy to work out a
> > way to merge this via a shared stable branch.
>
> Sorry it took me a while to get around to these, but they're essentially good
> with me.  There's some comments about needing ISA_C/c.li, but that's pretty
> trivial.  In terms of mechanics: I don't really ever understand how to do these
> multi-tree merges.  In an ideal world I'd like to have the arch/riscv/ stuff
> stay in riscv/for-next, both because I don't want to deal with merge conflicts
> and because that's where the RISC-V autobuilders look.
>
> The best I can come up with is to split #3 up such that drivers/firmware/efi/
> is its own patch and then send that up along with the PE header definitions
> into an RC.  It'd be unused code at that point, but at least it'd break the
> dependency between the trees and it'll be getting tested in riscv/for-next so
> it won't rot.  We can ARMSTUB->GENERIC_STUB by just having the RISC-V support
> select woth ARMSTUB and GENERIC_STUB, with a cleanup going in after everything
> is merged.
>
> That said, I'm happy if there's a better way to do this...
>

I'll reshuffle the code a bit, and send out an updated series. If we
are all happy with that, I will stick the first 2 patches on a shared
tag that you can pull into your branch, and you can apply the
remaining 4 patches on top of that. Are you ok with a tag based on
v5.7-rc2?

