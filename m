Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5782EAA9
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 04:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=SuSJmM2rOHhxg+NIVN7zkgUrcC8lOGIhFMYHe0IqHDs=; b=OJQv3Hm/9tRn/haQQoqyPXVc/
	iBSMEiCMQB9OmG7AxKyWajSbGolcVQzSQUruiI63hiaxHuZhScfePSxiF/TmEL/BY11BfAzkLkaDg
	H4q3GSPa0/EybJQ+CfrkdSF5AgGoqmWqfW24UcTZ+CSk4JMdubLz5Hchm1hsZZTD0Xy36UoejT4Jw
	76ckGM5lFVs3O16/RaE1MZcsXdW1vd3HRZIPrjh1V6AKwICy1K7tYz0BHzZC1OAVnQQ59n1qHScI6
	GwO7mduKi3bLqEiK5z5cTTxBVNhwnvQ2fdyDQyPVYvnUy5nV19cOOMIRI65iTokhgPsNUMQfC5oKu
	siA3lm4aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWAkP-00078w-He; Thu, 30 May 2019 02:24:53 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWAkM-00078J-Bi
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 02:24:52 +0000
Received: by mail-pl1-f193.google.com with SMTP id x7so893027plr.12
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 19:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=CPt6wkJq97kG1KQIdlV37anR0lTgxTDxgZEZig0pWX4=;
 b=lU3BAFKgjRjPUpNpT01aNhejPZ8E/HmXZq10o3U5DZ12EZDg1J++erdhThLvFlx/T/
 Bs/wbPOe9JPSViR9C3Uf0Bo+6fTaSnxh8kqiI9Z0DO81XbaaUYgJNe30cilhVw6MjDwA
 ye4cXNF8pvV2A+SH1a+1IYBzKoeItDbTZHX/FUmURrMDJTbVtVwkORGNn51dhPHp5ZNx
 8UT0ll4qJT55K9fTKrpQGbQs4It7Dptk70cZZEIOC9BIIMlC9wBuPPj72woxKrAtfp3M
 iAquSXLEvAfyvDwXuCf1YjTvqQGa/vWABtYVoXsSVtBGZ/KvRrPZ/967Az7L28PxEkQ3
 a62g==
X-Gm-Message-State: APjAAAVBeSz83a6lTlfOp0ueJSP1tGl5CaD0Jz59aswDcvhB7Csnvp4p
 nzRCZqQXQdJHLS7u9+af4Q5hpw==
X-Google-Smtp-Source: APXvYqxPvTaeqBJlq+g6LmqvAvbVT2KrkiPXAS7Yw8YDF+yB++0EfdPTxWwpqVQysEbKWeUlVNuVDg==
X-Received: by 2002:a17:902:108a:: with SMTP id
 c10mr1342349pla.48.1559183088114; 
 Wed, 29 May 2019 19:24:48 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id f40sm849772pjg.9.2019.05.29.19.24.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 19:24:47 -0700 (PDT)
Date: Wed, 29 May 2019 19:24:47 -0700 (PDT)
X-Google-Original-Date: Wed, 29 May 2019 19:24:45 PDT (-0700)
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
In-Reply-To: <CABEDWGxKCqCq2HBU8u1-=QgmMCdb69oXxN5rz65nxNODxdCAnw@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>, alan.mikhak@sifive.com
Message-ID: <mhng-2a897a66-1f3d-4878-ba47-1ae36b555540@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_192450_403444_2627EDFC 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 09:20:35 PDT (-0700), alan.mikhak@sifive.com wrote:
> On Sat, May 25, 2019 at 1:24 AM Christoph Hellwig <hch@infradead.org> wrote:
>>
>> On Fri, May 24, 2019 at 12:05:24PM -0700, Alan Mikhak wrote:
>> > The get_maintainers.pl script also suggests linux-riscv mailing list.
>>
>> For drivers/pci/endpoint stuff?  That kinda sounds like a bug, can you
>> paste the output here?
>
> Please see below output of get_maintainers.pl for all my patches
> related to PCIe endpoint work. It seems get_maintainers.pl suggests
> linux-riscv based on @sifive.com email address.
>
> $ ./scripts/get_maintainer.pl 0001-Set-endpoint-controller-pointer-to-null.patch
> Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT SUBSYSTEM)
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT SUBSYSTEM)
> Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
> Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
> Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
> linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)
>
> $ ./scripts/get_maintainer.pl
> 0001-Allocate-enough-space-for-fixed-size-BAR.patch
> Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:8/8=100%)
> Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
> Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
> Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
> Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> (commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
> Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
> Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
> linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)
>
> $ ./scripts/get_maintainer.pl 0001-Skip-odd-BAR-when-skipping-64bit-BAR.patch
> Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:8/8=100%)
> Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
> Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
> Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
> Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> (commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
> Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
> Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
> linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)
>
> $ ./scripts/get_maintainer.pl 0001-Clear-BAR-before-freeing-its-space.patch
> Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:8/8=100%)
> Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
> Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
> Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
> Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> (commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
> Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
> Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
> linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)
>
> $ ./scripts/get_maintainer.pl 0001-Add-DMA-to-Linux-PCI-EP-Framework.patch
> Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
> SUBSYSTEM,commit_signer:8/8=100%)
> Arnd Bergmann <arnd@arndb.de> (supporter:CHAR and MISC DRIVERS)
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:CHAR and
> MISC DRIVERS)
> Jingoo Han <jingoohan1@gmail.com> (maintainer:PCI DRIVER FOR SYNOPSYS
> DESIGNWARE)
> Gustavo Pimentel <gustavo.pimentel@synopsys.com> (maintainer:PCI
> DRIVER FOR SYNOPSYS
> DESIGNWARE,commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
> Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
> Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
> Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
> Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
> Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
> linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)
>
> $ ./scripts/get_maintainer.pl 0001-Fix-broken-pcitest-compilation.patch
> Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT SUBSYSTEM)
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT SUBSYSTEM)
> Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
> Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
> linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)
>
> $ ./scripts/get_maintainer.pl 0002-Fix-compiler-warning-in-pcitest.patch
> Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT SUBSYSTEM)
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT SUBSYSTEM)
> Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
> Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
> linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

I'm guessing it's this

    SIFIVE DRIVERS
    M:      Palmer Dabbelt <palmer@sifive.com>
    M:      Paul Walmsley <paul.walmsley@sifive.com>
    L:      linux-riscv@lists.infradead.org
    T:      git git://github.com/sifive/riscv-linux.git
    S:      Supported
    K:      sifive
    N:      sifive

which, if I understand correctly, will match any "sifive" in the entire patch
body.  I think the options are to either drop the K line, or to attempt a regex
that doesn't match the sifive part.  This appears to at least stop the matches
for me

    diff --git a/MAINTAINERS b/MAINTAINERS
    index 2c2fce72e694..003570e1f8d4 100644
    --- a/MAINTAINERS
    +++ b/MAINTAINERS
    @@ -14131,7 +14131,7 @@ M:      Paul Walmsley <paul.walmsley@sifive.com>
     L:     linux-riscv@lists.infradead.org
     T:     git git://github.com/sifive/riscv-linux.git
     S:     Supported
    -K:     sifive
    +K:     ^[@]sifive
     N:     sifive
     
     SILEAD TOUCHSCREEN DRIVER

Anyone have a better idea?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
