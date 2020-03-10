Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E3817F05A
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 07:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zW8Umv/Agp2bpd64V5+Tlu6r79pt91PcpR/fWF6jrvg=; b=dx0KJgAqNVFDr8
	ShIMTBAOABwJyYcBePx53Puflzf/iLzUit1iMFcOMjEs6m/OqVD6hFBDNzo/GXKPCk77jdYgHlZwC
	GrtbY+hs6Z+lhzZg8GRowzlpaXI2xHh4j1kYnengN316qNAzDgog4Qu1YCSB+OP4wFS+clLFm4CnZ
	T0bOpxA9dgixHBG27YrxogRbdKDgbt0U1Oo7eaD57cY7k+o5TLg+08QG/BOq3SYJxGTFhSUKTotv7
	dt1sUIYg/KUcBci31bRfShtogHJGywBnq+q3wtSCCF9KuO4g3qObbHDeQPo9XnaUmBQHJPM7hyc4Y
	OdZerooeqJ1tlnzFBoAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBY4S-0000UB-43; Tue, 10 Mar 2020 06:08:52 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBY4O-0000Ta-Hf
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 06:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583820525;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zW8Umv/Agp2bpd64V5+Tlu6r79pt91PcpR/fWF6jrvg=;
 b=A7wPt15Xp9y9SW58ia1nuH+mXmtzZYOriKtkDdz0+XTBwRUCpT20Aekt4xmslpwkWs1tlk
 KPmmeV0mfo2iZm5H1/TeIaaSqeh7BY+K5WTaWT2ZTyZHy+lsaE7OGnEvMl7fXCuRuGlChT
 EkkBXnqLY+XEEQhNsLfzr1cKKG0CfEc=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380-MvETrOxZPKKKZXmW_ckpsQ-1; Tue, 10 Mar 2020 02:08:41 -0400
X-MC-Unique: MvETrOxZPKKKZXmW_ckpsQ-1
Received: by mail-qv1-f71.google.com with SMTP id l16so8426398qvo.15
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 23:08:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uJTqn/3km1cWGkR5O9zni0+fw9f0gcK2eW7HEp2x1xo=;
 b=Ocno6A0rG6jSx88SA1SHZ4uROn7JPG1jSE4dvxLqr7sl7R+ATLelqvK4aGOCN2p4cG
 IIDvkCoLNjSm/eg20zEUB/7IdbrDcRCiEjUDPs7mfCbHzR2q1W3iLsIST7S6CViA3ohZ
 71eTYX2K2XJzmuNvozY1MPSC5CIe5OOoOvi72JzyrJitHrX94wrELNKPZUhD5GMnWDPA
 NS9y4+9jO5yyqw1etJdfPXvlfnpGEXasFIIVQk6IDtHqhhKZsqRhJGj9wiPxS7Z2tc1Q
 6doObAwzUvzlJ1muBthAVcegIF/jV3g37FbNMsqFwQzM/s7Lu159yPaxP940KOxcGx5s
 Rv/A==
X-Gm-Message-State: ANhLgQ3cGA1ZT7hGVWnrUAPwXYEMQ3NwW+6dR3ASYisXuhPhd9qd6bjn
 1+PLRKrw8L7MuEEi9pRs+ZSf+G82uTvRGhznx7rIX2cp8UORurAhewrxD/DLp5wkxDzmpp2i9GD
 miTH4xpFFr3mlK4dlz+4sYswv+d5H
X-Received: by 2002:a05:620a:522:: with SMTP id
 h2mr18123544qkh.260.1583820520599; 
 Mon, 09 Mar 2020 23:08:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtevqsGmilW8qDhekgTD6e5+LBJJDkMUzFLdu4foh4wAiWquHACMIZexE5jNqq36JlmX5ECYw==
X-Received: by 2002:a05:620a:522:: with SMTP id
 h2mr18123533qkh.260.1583820520334; 
 Mon, 09 Mar 2020 23:08:40 -0700 (PDT)
Received: from redhat.com (bzq-79-178-2-19.red.bezeqint.net. [79.178.2.19])
 by smtp.gmail.com with ESMTPSA id v12sm22112284qti.84.2020.03.09.23.08.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 23:08:39 -0700 (PDT)
Date: Tue, 10 Mar 2020 02:08:34 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [linux-next:master 7003/7050] include/linux/virtio_config.h:113:
 undefined reference to `page_reporting_unregister'
Message-ID: <20200310015958-mutt-send-email-mst@kernel.org>
References: <202003091047.yO0wlUGy%lkp@intel.com>
 <CAKgT0UcHjPqF-djZWYXBg=vqkBfp295QihvPrWn6xq_jY4NNYg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKgT0UcHjPqF-djZWYXBg=vqkBfp295QihvPrWn6xq_jY4NNYg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_230848_673315_BF76BBED 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: anup.patel@wdc.com, kbuild test robot <lkp@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>, palmerdabbelt@google.com,
 Christian Borntraeger <borntraeger@de.ibm.com>, atish.patra@wdc.com,
 alistair.francis@wdc.com, linux-riscv@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 07:19:51PM -0700, Alexander Duyck wrote:
> On Sun, Mar 8, 2020 at 7:54 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next=
.git master
> > head:   b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6
> > commit: 120359931943d2b801ce51a1a045dcc0a5d1a55b [7003/7050] Merge bran=
ch 'akpm-current/current'
> > config: riscv-randconfig-a001-20200308 (attached as .config)
> > compiler: riscv64-linux-gcc (GCC) 7.5.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 120359931943d2b801ce51a1a045dcc0a5d1a55b
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=3D7.5.0 make.cross ARCH=3Driscv
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    drivers/virtio/virtio_balloon.o: In function `leak_balloon':
> >    drivers/virtio/virtio_balloon.c:281: undefined reference to `balloon=
_page_dequeue'
> >    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
> > >> include/linux/virtio_config.h:113: undefined reference to `page_repo=
rting_unregister'
> >    drivers/virtio/virtio_balloon.o: In function `virtio_cread32':
> >    include/linux/virtio_config.h:423: undefined reference to `balloon_p=
age_alloc'
> >    drivers/virtio/virtio_balloon.o: In function `fill_balloon':
> > >> drivers/virtio/virtio_balloon.c:233: undefined reference to `balloon=
_page_enqueue'
> >    drivers/virtio/virtio_balloon.o: In function `__virtio_test_bit':
> > >> include/linux/virtio_config.h:113: undefined reference to `page_repo=
rting_register'
> >    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_remove=
':
> >    drivers/gpu/drm/virtio/virtgpu_drv.c:139: undefined reference to `dr=
m_dev_unplug'
> >    drivers/gpu/drm/virtio/virtgpu_drv.c:140: undefined reference to `dr=
m_atomic_helper_shutdown'
> >    drivers/gpu/drm/virtio/virtgpu_drv.c:141: undefined reference to `dr=
m_dev_put'
> >    drivers/gpu/drm/virtio/virtgpu_drv.o: In function `virtio_gpu_probe'=
:
>=20
> It looks like somehow the config has CONFIG_VIRTIO_BALLOON enabled,
> but didn't select CONFIG_MEMORY_BALLOON nor CONFIG_PAGE_REPORTING That
> shouldn't be possible since in drivers/virtio/Kconfig we have the
> following:
> config VIRTIO_BALLOON
>         tristate "Virtio balloon driver"
>         depends on VIRTIO
>         select MEMORY_BALLOON
>         select PAGE_REPORTING
>=20
> I think I traced the problem down. It looks like it is related to this pa=
tch:
>     RISC-V: Add kconfig option for QEMU virt machine
>=20
>     We add kconfig option for QEMU virt machine and select all
>     required VIRTIO drivers using this kconfig option.
>=20
>     Signed-off-by: Anup Patel <anup.patel@wdc.com>
>     Reviewed-by: Atish Patra <atish.patra@wdc.com>
>     Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>     Reviewed-by: Alistair Francis <alistair.francis@wdc.com>
>     Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>=20
>=20
> The problem is it is using select to enable things that have
> dependencies, and as a result it is enabling things without enabling
> the bits needed to support them. That isn't recommended and is
> actually called out to something to avoid in the kconfig-language
> documentation:
> https://elixir.bootlin.com/linux/latest/source/Documentation/kbuild/kconf=
ig-language.rst#L143


I agree. And when we change virtio we likely won't remember to fix up RISC-=
V.
So please don't poke at it from arches.
The right way to do this IMHO is via ARCH_DEFCONFIG, and using
a defconfig per board.
And I think the same applies to s390 and virtio console.
Christian?

--=20
MST


