Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA5D15A8FA
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 13:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktAYg1cBzxLknL7OVJd4+pqAQ0FvDJqHPGKojt5tkNY=; b=SDe3PlUfkEJlzO
	xZc4d9xMbv5tLY0hdpB3tvRFVTC2gVKCAWgBGV1kLGHnxCUcUohKmB2dxSbgKgMZlqxrWAn5+XYLA
	8ePPXREqe42wQU43fFnHyxgIDg8luk4d/CKu4YWtbz0nSDKvzRaodU9Qptl68IqnXcrGY8kspRbLn
	iXOrD7kMvc6WC06+g4eSGknTPZ+UjQvNhqts6XZXfcZpDNw2K22KrDq7Yj1H6lW5dpj4OOgiHtdoq
	QCPvA8ZBBaYDZBNZkyJas/vz8QyitEMZfAZhAzZVABqt3FXBi4T3nmG57+zIJ25b5mkFuapmZPuHK
	Yht9So5DszdyhQhmSZBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1r0P-0001j2-8U; Wed, 12 Feb 2020 12:20:37 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1r0K-0001iD-8P
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 12:20:35 +0000
Received: by mail-qk1-x741.google.com with SMTP id v195so1771229qkb.11
 for <linux-riscv@lists.infradead.org>; Wed, 12 Feb 2020 04:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ktAYg1cBzxLknL7OVJd4+pqAQ0FvDJqHPGKojt5tkNY=;
 b=L3Io6NjIrV6NQO0Q1xuuhaqAlL2d1lMZiPjedIJg+2SyhAdfUx3dZ28LsUa9cloK8D
 QZuOn3/bvfDku6+XuwTcahOUzG4v/o6xUFgrtXerBplm7iyAT5Vi2Jsz9Mj4LruUVsJk
 2+0p2mHk6R4UI4S5i7A62yL+uyL1+zTFLn4L8XxhdUo5Gtl6Uhg341OKVLfWiFk7jf0c
 2MnYaVa1JmIPRs4qojIOtwTInd8JloXDDbFr1I9u/lk0MMlS/QWe6bKdMw0qKIr1/b9C
 pSmYRynOA+UArR0jkcVqyoeOY/WRFoxhBOXTIY9eKP0qFZm5DDBnrtdOGdHImTJukZYp
 htVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ktAYg1cBzxLknL7OVJd4+pqAQ0FvDJqHPGKojt5tkNY=;
 b=LetOxHYYCT1NAtoyVqg6iwVEX2jXeKQsfKz0GAUc3/GrtLBf7b/NCZgx6nq5EyD4OL
 wqHLhCrR515hPy0VmR3kgz9zh7WLsO98K/h/OJgJVOf+Kwk3zgZTOUeSQHuywFIyGMsA
 Vsz+QZxZvco/weFm/b8ohucSv8MtWQjtLrj6PZ9myjojk6nEajQMI04hiOd9/BsXTHnu
 ksUugAzH5b8Y4mOz6fNUIv9k2PXYiFcvWF4/oPDTr0bI29njE13kQsMtEJpI15Fdmy32
 A5F2fA3cIGmVTIGxOopMdVx4QvDcdF1DPGxW13WCr4YD7/rxh/dnzepvQH/VPe2P1A7p
 o74Q==
X-Gm-Message-State: APjAAAWa1Ek4PmDuuDUyS+C7FRwqWxeeVxIg4B/bcpHtYUQaLp/YfkCc
 puRW1NS9mTrql8WvAVoSLHgL3qjZn5CU9NbwYwM=
X-Google-Smtp-Source: APXvYqwASG+q0bWOqqNa6UUKFkgpPuwB9vF/8qr6lH3GpnDNnJjv7AvDOj1hpNkjrIS4lYTHXsKiICbu7SRPri5O49k=
X-Received: by 2002:a37:8505:: with SMTP id h5mr10419574qkd.281.1581510028867; 
 Wed, 12 Feb 2020 04:20:28 -0800 (PST)
MIME-Version: 1.0
References: <20191028121043.22934-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1910301311240.6452@viisi.sifive.com>
 <20191031155222.GA7270@lst.de>
 <alpine.DEB.2.21.9999.1911221817010.14532@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911221817010.14532@viisi.sifive.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Wed, 12 Feb 2020 20:19:51 +0800
Message-ID: <CAEbi=3eAFDD1Su_SKBfPXp0g_+U=EvkbRm7=ULVBb7xaaiZLTQ@mail.gmail.com>
Subject: Re: RISC-V nommu support v6
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_042033_739704_15992E68 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [green.hu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Christoph Hellwig <hch@lst.de>, linux-riscv@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Paul Walmsley <paul.walmsley@sifive.com> =E6=96=BC 2019=E5=B9=B411=E6=9C=88=
23=E6=97=A5 =E9=80=B1=E5=85=AD =E4=B8=8A=E5=8D=8810:24=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> On Thu, 31 Oct 2019, Christoph Hellwig wrote:
>
> > On Wed, Oct 30, 2019 at 01:21:21PM -0700, Paul Walmsley wrote:
> > > I tried building this series from your git branch mentioned above, an=
d
> > > booted it with a buildroot userspace built from your custom buildroot
> > > tree.  Am seeing some segmentation faults from userspace (below).
> > >
> > > Am still planning to merge your patches.
> > >
> > > But I'm wondering whether you are seeing these segmentation faults al=
so?
> > > Or is it something that might be specific to my test setup?
> >
> > I just built a fresh image using make -j4 with that report and it works
> > perfectly fine with my tree.
>
> Another colleague just gave this a quick test, following your instruction=
s
> as I did.  He encountered the same segmentation faulting issue.  Might be
> worth taking a look at this once v5.5-rc1 is released.  Could be a
> userspace issue, though.
>

Hi all,

I have the same symptom too.

    [    0.389983] Run /init as init process
    [    0.457294] mount[24]: unhandled signal 11 code 0x2 at 0x00000000834=
000e8
    [    0.458057] CPU: 0 PID: 24 Comm: mount Not tainted
5.4.0-rc5-00021-g1a87b1010118 #44
    [    0.458477] epc: 00000000834000e8 ra : 000000008341c140 sp :
000000008348add0
    [    0.458803]  gp : 0000000083471300 tp : 0000000000000000 t0 :
0000000000000032
    [    0.459319]  t1 : 8101010101010100 t2 : 0000000000000007 s0 :
0000000000000001
    [    0.459678]  s1 : 0000000000000001 a0 : 0000000000000000 a1 :
000000008348afb8
    [    0.460027]  a2 : 000000008348afa6 a3 : 0000000000008000 a4 :
0000000000000000
    [    0.460370]  a5 : 0000000000084000 a6 : 70f8fefcf8fef0fc a7 :
0000000000000028
    [    0.460829]  s2 : 0000000083483fd0 s3 : fffffffffffffff8 s4 :
0000000083425dcc
    [    0.461200]  s5 : 0000000000000001 s6 : 0000000000000001 s7 :
0000000000000001
    [    0.461592]  s8 : 0000000000000000 s9 : 00000000838ccbd0 s10:
0000000000000000
    [    0.461912]  s11: 0000000000000000 t3 : 000000000000003d t4 :
000000000000002b
    [    0.462283]  t5 : 0000000000000002 t6 : 0000000000000001
    [    0.462562] status: 0000000000004080 badaddr: 0000000000084010
cause: 0000000000000005
    SEGV

    This failure is because of it tries access the absolute address. This
    address is generated by gcc. It tries to access __bss_start in a non-PI=
C
    way. The code sequence will be looked like this.
    00000000000000a4 <__do_global_dtors_aux>:
          a4:       000847b7                lui     a5,0x84
          a8:       0107c703                lbu     a4,16(a5) # 84010
<__bss_start>

    However this is a user program and it will be loaded to any
address of RAM by kernel loader
    so that it could not use the absolute address.

    In this case, we have to enable PIC when compiling these codes and it i=
s in
    gcc so we have to set the correct configuration options for gcc in
buildroot.

-BR2_EXTRA_GCC_CONFIG_OPTIONS=3D""
+BR2_EXTRA_GCC_CONFIG_OPTIONS=3D"CFLAGS_FOR_TARGET=3D'-O2 -fPIC'
CXXFLAGS_FOR_TARGET=3D'-O2 -fPIC'"

    After applying this fix, the code will be looked like this.
    00000000000000a0 <__do_global_dtors_aux>:
          a0:       00085797                auipc   a5,0x85
          a4:       bf07c783                lbu     a5,-1040(a5) #
84c90 <__bss_start>

It could boot to shell without any segmentation fault.

Hi Christoph,
Would you like to upstream the buildroot porting for nommu support?
Then I can upstream this fix. :)

