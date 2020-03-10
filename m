Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A6A17F2BA
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 10:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3k393cpZpdrRAgRetuLt8LDUKrPY+6Ws/dguzrSRMQ=; b=tIYsvKcrPF8jRs
	+zG5Xo+w7RGJl9anKXbPbF4QE4TlgPbGs/kmgKaFiYA9u8qvR+Geo7bdrSLN/BKgA/W6sF/z4QDA1
	t/DUPlG+Qc27k/LZ5J5T4Ew9BN/h34QfBrvr7BMAC4lijaJLjEQTgbXBHnBWs0DFOI/QtS+ap+b0s
	C6yugP7VuANVjdpj8BkmUmcUbhYyPI2v6l7JiU75Xm6p4bt2Diy7gL4FYaO60HWBfeQGFdk6DC+yK
	WjIa4PYeLRRk5rL9HNTYGztNb1pjL8khYNvpnH7Bf3U4P4zVNbblHt5tlBe2G2A2BG+SAAQrkSlMp
	3sYCCMNpVmO6tuBZB3jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBarU-0003je-8f; Tue, 10 Mar 2020 09:07:40 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBarO-0003hj-WA
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 09:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583831252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c3k393cpZpdrRAgRetuLt8LDUKrPY+6Ws/dguzrSRMQ=;
 b=HqNXxFxQuwQKaO+PRVIwGN8nuVBaexzU5vyBw6q3/e1msatr6tludhlzYHDUJ3t1QBVp5B
 lBWSZoMFN4b/R7zqGxclBoarLtFy+1XeGFW2jLLnjQfU1joe/oDzf4gu6ul0jHReAVieRy
 dZAAni5xTcPwfF228ejS2kwUXFBS9Ac=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-vk8O8ZNKOP6VWD7FkZ4Kzg-1; Tue, 10 Mar 2020 05:07:28 -0400
X-MC-Unique: vk8O8ZNKOP6VWD7FkZ4Kzg-1
Received: by mail-qt1-f197.google.com with SMTP id v10so224932qtk.7
 for <linux-riscv@lists.infradead.org>; Tue, 10 Mar 2020 02:07:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gkwmqPp6GsyO5VaaBvrjPTvpV8Abv750jl9TPtb76uY=;
 b=UwvyYt/h2dnt9823ZYke15bcxYoqip2/Ncrwg8HDp72QDMgZUoIsyz+cIu4He3S9Rs
 rfZPlRD4GyURXsIzoQ230o3gCvAe3kcT9lcvWRzrLNjsHk2GZCxgVg3Ob91KYAT4cImq
 hdndIZJ8UntAntmWEmCrZyDwz5fs9CUuFR/fz0T8B1xzmtGEOlg9dmZpr6CUAyg/NEe7
 oxMVFaFFhvLXRKyt/LToW8+SPtddYN5TlVJFu3Q9vz58KdPNE8gSKUeBRyxYIsKGg2LA
 an2fnNQW2tZHQAMDTZXOyG9lQnZ0LBN0FxXazBbPL8J+2TL9qGh1Pt1IbQ2BCWuqjLWv
 Gz9Q==
X-Gm-Message-State: ANhLgQ3YCYfYwAO47C34dHB3qCAngjE9JHjjCXzTRX8HPAOt4bM4FZsg
 lLP/kBtkW0FOXoCMBNjUraGPEegIgnTK0orGrAyG+qrjkYslcKHp5yv/DLPiwuW8jYiJSRfF7Qn
 mP/cP7P9HCOnRLuH9hB+IDoEN241c
X-Received: by 2002:a37:6388:: with SMTP id x130mr7445037qkb.429.1583831248048; 
 Tue, 10 Mar 2020 02:07:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsR04+ef3fg0lvE+116n1XFW0wqgii1lPEefQ1ofWZyChJLPn5FCzZUYKuzd6JxdXzrskDOXg==
X-Received: by 2002:a37:6388:: with SMTP id x130mr7445011qkb.429.1583831247688; 
 Tue, 10 Mar 2020 02:07:27 -0700 (PDT)
Received: from redhat.com (bzq-79-178-2-19.red.bezeqint.net. [79.178.2.19])
 by smtp.gmail.com with ESMTPSA id l8sm832017qth.3.2020.03.10.02.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 02:07:26 -0700 (PDT)
Date: Tue, 10 Mar 2020 05:07:21 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [linux-next:master 7003/7050] include/linux/virtio_config.h:113:
 undefined reference to `page_reporting_unregister'
Message-ID: <20200310050630-mutt-send-email-mst@kernel.org>
References: <202003091047.yO0wlUGy%lkp@intel.com>
 <CAKgT0UcHjPqF-djZWYXBg=vqkBfp295QihvPrWn6xq_jY4NNYg@mail.gmail.com>
 <20200310015958-mutt-send-email-mst@kernel.org>
 <CAAhSdy0TS8MPH2BoGL=2g5skjYkjJLrzkPJx+O8J_nTLStC+dw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAhSdy0TS8MPH2BoGL=2g5skjYkjJLrzkPJx+O8J_nTLStC+dw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_020735_118032_0F29E730 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Mar 10, 2020 at 02:13:19PM +0530, Anup Patel wrote:
> On Tue, Mar 10, 2020 at 11:38 AM Michael S. Tsirkin <mst@redhat.com> wrot=
e:
> >
> > On Mon, Mar 09, 2020 at 07:19:51PM -0700, Alexander Duyck wrote:
> > > On Sun, Mar 8, 2020 at 7:54 PM kbuild test robot <lkp@intel.com> wrot=
e:
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-=
next.git master
> > > > head:   b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6
> > > > commit: 120359931943d2b801ce51a1a045dcc0a5d1a55b [7003/7050] Merge =
branch 'akpm-current/current'
> > > > config: riscv-randconfig-a001-20200308 (attached as .config)
> > > > compiler: riscv64-linux-gcc (GCC) 7.5.0
> > > > reproduce:
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/mast=
er/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         git checkout 120359931943d2b801ce51a1a045dcc0a5d1a55b
> > > >         # save the attached .config to linux build tree
> > > >         GCC_VERSION=3D7.5.0 make.cross ARCH=3Driscv
> > > >
> > > > If you fix the issue, kindly add following tag
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All errors (new ones prefixed by >>):
> > > >
> > > >    drivers/virtio/virtio_balloon.o: In function `leak_balloon':
> > > >    drivers/virtio/virtio_balloon.c:281: undefined reference to `bal=
loon_page_dequeue'
> > > >    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit'=
:
> > > > >> include/linux/virtio_config.h:113: undefined reference to `page_=
reporting_unregister'
> > > >    drivers/virtio/virtio_balloon.o: In function `virtio_cread32':
> > > >    include/linux/virtio_config.h:423: undefined reference to `ballo=
on_page_alloc'
> > > >    drivers/virtio/virtio_balloon.o: In function `fill_balloon':
> > > > >> drivers/virtio/virtio_balloon.c:233: undefined reference to `bal=
loon_page_enqueue'
> > > >    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit'=
:
> > > > >> include/linux/virtio_config.h:113: undefined reference to `page_=
reporting_register'
> > > >    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_re=
move':
> > > >    drivers/gpu/drm/virtio/virtgpu_drv.c:139: undefined reference to=
 `drm_dev_unplug'
> > > >    drivers/gpu/drm/virtio/virtgpu_drv.c:140: undefined reference to=
 `drm_atomic_helper_shutdown'
> > > >    drivers/gpu/drm/virtio/virtgpu_drv.c:141: undefined reference to=
 `drm_dev_put'
> > > >    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_pr=
obe':
> > >
> > > It looks like somehow the config has CONFIG_VIRTIO_BALLOON enabled,
> > > but didn't select CONFIG_MEMORY_BALLOON nor CONFIG_PAGE_REPORTING Tha=
t
> > > shouldn't be possible since in drivers/virtio/Kconfig we have the
> > > following:
> > > config VIRTIO_BALLOON
> > >         tristate "Virtio balloon driver"
> > >         depends on VIRTIO
> > >         select MEMORY_BALLOON
> > >         select PAGE_REPORTING
> > >
> > > I think I traced the problem down. It looks like it is related to thi=
s patch:
> > >     RISC-V: Add kconfig option for QEMU virt machine
> > >
> > >     We add kconfig option for QEMU virt machine and select all
> > >     required VIRTIO drivers using this kconfig option.
> > >
> > >     Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > >     Reviewed-by: Atish Patra <atish.patra@wdc.com>
> > >     Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > >     Reviewed-by: Alistair Francis <alistair.francis@wdc.com>
> > >     Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > >
> > >
> > > The problem is it is using select to enable things that have
> > > dependencies, and as a result it is enabling things without enabling
> > > the bits needed to support them. That isn't recommended and is
> > > actually called out to something to avoid in the kconfig-language
> > > documentation:
> > > https://elixir.bootlin.com/linux/latest/source/Documentation/kbuild/k=
config-language.rst#L143
> >
> >
> > I agree. And when we change virtio we likely won't remember to fix up R=
ISC-V.
> > So please don't poke at it from arches.
>=20
> I will fix RISC-V Kconfig.
>=20
> Is it fine to use "imply" inplace of "select" ?
>=20
> Regards,
> Anup

IIUC imply has exactly the same limitations as select,
so this won't do any good.

> > The right way to do this IMHO is via ARCH_DEFCONFIG, and using
> > a defconfig per board.
> > And I think the same applies to s390 and virtio console.
> > Christian?
> >
> > --
> > MST
> >
> >


