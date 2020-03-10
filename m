Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1776217F230
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 09:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DYA7BZb39MKDC8qklnJCLBS4YWQvxLUiNIQ+Da1cYlY=; b=pna9dgshs5nFZW4im+K3+FXHo
	SBFxEXx9eZyPwO6i712nhLS9KP/RkziNASlUZMvfUIgRA4Bfic0FxHGkEzZkbt39cPh4YPBhme7CF
	D2N6w/0pkMsq/BCrHi66IQA7Dek2s2W9vRe2grsX5tv6fWcXO+HryeLKj+WbOI8B2bLmEB9c2xIqM
	cXAiQUYzRrErGTHFnZbkAsS3nxGaWQQmamiixh8SlPtIhk7r9Hs5rEOp3R91ibcYSZbsOfmfouOx2
	YcFcqhFtWDkWvMAXj6ofF51pmGQQ00le3GTyfxKrDY+8IPyqxKpQ3BSgvD4TYNyjOE6ixK89VL4CY
	wKDA4GCbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBaUE-0001Hu-T4; Tue, 10 Mar 2020 08:43:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBaU9-0001Fr-CU
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 08:43:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so325050wmb.0
 for <linux-riscv@lists.infradead.org>; Tue, 10 Mar 2020 01:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DYA7BZb39MKDC8qklnJCLBS4YWQvxLUiNIQ+Da1cYlY=;
 b=iEIi6bYbOtvsYr2kXQLs5I/aXFNWwt90dLOpCBZzYUfQ/sAnJUoMsNQCHdussbyfmm
 bsWPM4ITWAlUUumo0xINkbry2IlMEVY4HpiE2IZhWk3cFGFkl1VrNJimaSAgoeWB7WJ5
 np/iXY1ZmguYoAk9urEZKTt7TiMadxxjJkC0JKTme3Vb8aqZ2LvndPCRZk0+Ei3vV6my
 5ZluJg/iu+6YWzd6BmOdD3AM04iRninzPz7XflOxJGfhTZAZ87KJeBWwRogStnNcAIYn
 wIzh3AIKJCaRp5SEFer15gM1igFcPeumxQ+p/bJ3ZL+ohRRjM3h/NhGDbRnB7GXa5aQp
 mlWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DYA7BZb39MKDC8qklnJCLBS4YWQvxLUiNIQ+Da1cYlY=;
 b=H5pIpAhqWMGEYCL/k1L5G3o4CZnTn3AYpZ+Ze5kjX1f+WHUy2SX1dhcjhXwdLQHZag
 j2sBm/FKJXveDr+2Fg0BdYAWxSP7uxx+5dZUhtdp/BQfex4RpixVzb4PbKtQUb0Zs1Dq
 BkF0CD2h4KocNelgo//SyaEHipKNaiYQlzcEOQTmrs/WYOGWKe6Gd/osUY/D4j3VhkiY
 rIPmIWknlhg4z/27SI0HY5TY77TVFdAVcJI0c3H0QCcjvgs+cBDg6ZFWaKG+iXWEiTZS
 11ZlPNcfrXod7KcNL9Ip65h2Kj24zWOOYU6mbTJwnQLwEm4Jaf0wrhwVGDij646wMpMJ
 nHiw==
X-Gm-Message-State: ANhLgQ1xvdG0vHIu8c+aW6WcuHkrsWm5Z62bYLIjG24XtySuYkc0ZV7L
 PMxiENK/WxiTJplovRerhurWppvDW8wt1C+Fs5Ad5g==
X-Google-Smtp-Source: ADFU+vuQcSj5Uo77SCtRl46EOSr5nGQu5aWu5ywN8k0Nr9BeRWTuhqz/WzJBjK1e7ygZmJhMS+GWb1RSUa6vYbT/a6c=
X-Received: by 2002:a1c:9c87:: with SMTP id f129mr1025162wme.26.1583829810957; 
 Tue, 10 Mar 2020 01:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <202003091047.yO0wlUGy%lkp@intel.com>
 <CAKgT0UcHjPqF-djZWYXBg=vqkBfp295QihvPrWn6xq_jY4NNYg@mail.gmail.com>
 <20200310015958-mutt-send-email-mst@kernel.org>
In-Reply-To: <20200310015958-mutt-send-email-mst@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 10 Mar 2020 14:13:19 +0530
Message-ID: <CAAhSdy0TS8MPH2BoGL=2g5skjYkjJLrzkPJx+O8J_nTLStC+dw@mail.gmail.com>
Subject: Re: [linux-next:master 7003/7050] include/linux/virtio_config.h:113:
 undefined reference to `page_reporting_unregister'
To: "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_014333_489915_13A452E3 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup.patel@wdc.com>, kbuild test robot <lkp@intel.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Alistair Francis <alistair.francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Atish Patra <atish.patra@wdc.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 11:38 AM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Mon, Mar 09, 2020 at 07:19:51PM -0700, Alexander Duyck wrote:
> > On Sun, Mar 8, 2020 at 7:54 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6
> > > commit: 120359931943d2b801ce51a1a045dcc0a5d1a55b [7003/7050] Merge branch 'akpm-current/current'
> > > config: riscv-randconfig-a001-20200308 (attached as .config)
> > > compiler: riscv64-linux-gcc (GCC) 7.5.0
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 120359931943d2b801ce51a1a045dcc0a5d1a55b
> > >         # save the attached .config to linux build tree
> > >         GCC_VERSION=7.5.0 make.cross ARCH=riscv
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    drivers/virtio/virtio_balloon.o: In function `leak_balloon':
> > >    drivers/virtio/virtio_balloon.c:281: undefined reference to `balloon_page_dequeue'
> > >    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
> > > >> include/linux/virtio_config.h:113: undefined reference to `page_reporting_unregister'
> > >    drivers/virtio/virtio_balloon.o: In function `virtio_cread32':
> > >    include/linux/virtio_config.h:423: undefined reference to `balloon_page_alloc'
> > >    drivers/virtio/virtio_balloon.o: In function `fill_balloon':
> > > >> drivers/virtio/virtio_balloon.c:233: undefined reference to `balloon_page_enqueue'
> > >    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
> > > >> include/linux/virtio_config.h:113: undefined reference to `page_reporting_register'
> > >    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_remove':
> > >    drivers/gpu/drm/virtio/virtgpu_drv.c:139: undefined reference to `drm_dev_unplug'
> > >    drivers/gpu/drm/virtio/virtgpu_drv.c:140: undefined reference to `drm_atomic_helper_shutdown'
> > >    drivers/gpu/drm/virtio/virtgpu_drv.c:141: undefined reference to `drm_dev_put'
> > >    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_probe':
> >
> > It looks like somehow the config has CONFIG_VIRTIO_BALLOON enabled,
> > but didn't select CONFIG_MEMORY_BALLOON nor CONFIG_PAGE_REPORTING That
> > shouldn't be possible since in drivers/virtio/Kconfig we have the
> > following:
> > config VIRTIO_BALLOON
> >         tristate "Virtio balloon driver"
> >         depends on VIRTIO
> >         select MEMORY_BALLOON
> >         select PAGE_REPORTING
> >
> > I think I traced the problem down. It looks like it is related to this patch:
> >     RISC-V: Add kconfig option for QEMU virt machine
> >
> >     We add kconfig option for QEMU virt machine and select all
> >     required VIRTIO drivers using this kconfig option.
> >
> >     Signed-off-by: Anup Patel <anup.patel@wdc.com>
> >     Reviewed-by: Atish Patra <atish.patra@wdc.com>
> >     Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> >     Reviewed-by: Alistair Francis <alistair.francis@wdc.com>
> >     Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> >
> >
> > The problem is it is using select to enable things that have
> > dependencies, and as a result it is enabling things without enabling
> > the bits needed to support them. That isn't recommended and is
> > actually called out to something to avoid in the kconfig-language
> > documentation:
> > https://elixir.bootlin.com/linux/latest/source/Documentation/kbuild/kconfig-language.rst#L143
>
>
> I agree. And when we change virtio we likely won't remember to fix up RISC-V.
> So please don't poke at it from arches.

I will fix RISC-V Kconfig.

Is it fine to use "imply" inplace of "select" ?

Regards,
Anup

> The right way to do this IMHO is via ARCH_DEFCONFIG, and using
> a defconfig per board.
> And I think the same applies to s390 and virtio console.
> Christian?
>
> --
> MST
>
>

