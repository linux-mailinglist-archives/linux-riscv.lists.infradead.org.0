Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407912CBB5
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 18:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tffYKKC7iewXV4lOPqGCBr1Q8HPNPDKKlMYleFKndow=; b=Cxw557RagiDCZ5
	L0uLp5ioj0TEkr+fDgh7GRYyH2oDmGZReUa4n5WZtaaMdHvdmdovJWbSO/SzjVlBX5Ei0RSpc2dSX
	XnJSm5sLZ5DbJE3nQVOBk01R6/ESWqKbxRDuqZFFf8C20ydD+vYiT4/ve/a/rvs9yUdW6GjkVF7ED
	fXBhbSAUF1C8wKYjUEXqdAz4yuUvG15xRThbsDITBmesTseOkgVLRtAspSHaysqXo3mMj23RqV7qn
	ctycbID6Ktj0vp2eCxOKPGBgDz17oqBuMo3GIxjqZ+8X5cpq71nlma5L9uGDe1EBThxKzR0dqrOL/
	1V144tEvrmXqZz/5A1ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeqN-0005zH-6c; Tue, 28 May 2019 16:20:55 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeqI-0005yw-AG
 for linux-riscv@lists.infradead.org; Tue, 28 May 2019 16:20:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id y13so15054582lfh.9
 for <linux-riscv@lists.infradead.org>; Tue, 28 May 2019 09:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tfx6gzmd9h6uLhpN9bC1+KJVQLw/ZqJyUF6MGaQbHUc=;
 b=GuNWuCDfegL53Vmvr/x4X1fzXxTicOMb+pgENySB41Ocv9xAUMv0dqbaDER1ktaFqt
 8DEkEWf1fj8oyJayJPRH+eVykl9js9qtuHo3s8HTwNIKFjrtW4CI7/QJx6nAt7T4DX6Q
 t6OGxYBAw+6e3Qarg2DKbALfAz88donlE7lhxidWSTj1tYFMisvZxUuciWLVpqXz4b8i
 mKxzKrOUw3yyrRTnvqpasyGU7EJCHkqmLO9eNcq2jqmm2wS01JY5DqLu0+aa+gl3Qvi5
 L5ETuJnXuwbbQ/xQr60SEz7KXQ/GzxtcJYSb4QMwVmav2BXtBrkT+h3/TI3W9ZOpiaDD
 VTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tfx6gzmd9h6uLhpN9bC1+KJVQLw/ZqJyUF6MGaQbHUc=;
 b=HWfFW7YzxuU80mdr58BB09+DynY5SWpcLJfPhTDIEwTOEOx4ae0mC44I11wZbYC9E+
 AA4TRhpxAX62m7MKBN1pOdNCufCGNSrr0zd4vgYJ719+prYQFHzZy+dECXdWkJPPa63r
 3cKJjuYWOUsrPmPvEbecbCs6LJXDTeUKulboegFZ3e6IzTlFgV9gVy6dZ2sn6cvPQFOS
 zae3lf9OundP0hpFoViIM4LhBEvjCshci5z5H0uVQmhrsdg/qL6X+GVkZD/djqSLr0Gj
 KpZUKPUDhic/uIVv96377OSLL7dan48ZXA2q2eiZDNoO+wGHWspzXo44WygCywPL/c4h
 wTQA==
X-Gm-Message-State: APjAAAWBP26FXUVdNeYiJqOaDlnv9dGGdjmWQYlRxWlIaQFBnEvNSf9q
 xwofUNN3etLAc8vt8qGDKJBxYkajfN5qylAW2qdadw==
X-Google-Smtp-Source: APXvYqyuyE6yuJ2M89KQGS4Du+B6hPgeLiKAREIAkPmwpgLJWxB3Fav1RoNLZwRWFJbdyPOH9UHbcxUis9onRapMd34=
X-Received: by 2002:ac2:4c84:: with SMTP id d4mr8768909lfl.1.1559060446876;
 Tue, 28 May 2019 09:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
 <20190524063809.GA25866@infradead.org>
 <alpine.DEB.2.21.9999.1905241200070.31734@viisi.sifive.com>
 <CABEDWGzbg0tU8ZnEYSOrivhek82Emv3g3Y9X-jv6-svLypXbuw@mail.gmail.com>
 <20190525082410.GC18854@infradead.org>
In-Reply-To: <20190525082410.GC18854@infradead.org>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Tue, 28 May 2019 09:20:35 -0700
Message-ID: <CABEDWGxKCqCq2HBU8u1-=QgmMCdb69oXxN5rz65nxNODxdCAnw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_092050_479180_5786F26F 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 1:24 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Fri, May 24, 2019 at 12:05:24PM -0700, Alan Mikhak wrote:
> > The get_maintainers.pl script also suggests linux-riscv mailing list.
>
> For drivers/pci/endpoint stuff?  That kinda sounds like a bug, can you
> paste the output here?

Please see below output of get_maintainers.pl for all my patches
related to PCIe endpoint work. It seems get_maintainers.pl suggests
linux-riscv based on @sifive.com email address.

$ ./scripts/get_maintainer.pl 0001-Set-endpoint-controller-pointer-to-null.patch
Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT SUBSYSTEM)
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT SUBSYSTEM)
Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

$ ./scripts/get_maintainer.pl
0001-Allocate-enough-space-for-fixed-size-BAR.patch
Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:8/8=100%)
Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
Gustavo Pimentel <gustavo.pimentel@synopsys.com>
(commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

$ ./scripts/get_maintainer.pl 0001-Skip-odd-BAR-when-skipping-64bit-BAR.patch
Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:8/8=100%)
Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
Gustavo Pimentel <gustavo.pimentel@synopsys.com>
(commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

$ ./scripts/get_maintainer.pl 0001-Clear-BAR-before-freeing-its-space.patch
Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:8/8=100%)
Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
Gustavo Pimentel <gustavo.pimentel@synopsys.com>
(commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

$ ./scripts/get_maintainer.pl 0001-Add-DMA-to-Linux-PCI-EP-Framework.patch
Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:7/8=88%,authored:4/8=50%,added_lines:61/136=45%,removed_lines:39/63=62%)
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT
SUBSYSTEM,commit_signer:8/8=100%)
Arnd Bergmann <arnd@arndb.de> (supporter:CHAR and MISC DRIVERS)
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:CHAR and
MISC DRIVERS)
Jingoo Han <jingoohan1@gmail.com> (maintainer:PCI DRIVER FOR SYNOPSYS
DESIGNWARE)
Gustavo Pimentel <gustavo.pimentel@synopsys.com> (maintainer:PCI
DRIVER FOR SYNOPSYS
DESIGNWARE,commit_signer:2/8=25%,authored:2/8=25%,added_lines:68/136=50%,removed_lines:22/63=35%)
Bjorn Helgaas <bhelgaas@google.com> (supporter:PCI SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
Wen Yang <wen.yang99@zte.com.cn> (commit_signer:1/8=12%,authored:1/8=12%)
Kangjie Lu <kjlu@umn.edu> (commit_signer:1/8=12%,authored:1/8=12%)
linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

$ ./scripts/get_maintainer.pl 0001-Fix-broken-pcitest-compilation.patch
Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT SUBSYSTEM)
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

$ ./scripts/get_maintainer.pl 0002-Fix-compiler-warning-in-pcitest.patch
Kishon Vijay Abraham I <kishon@ti.com> (supporter:PCI ENDPOINT SUBSYSTEM)
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (supporter:PCI ENDPOINT SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
linux-pci@vger.kernel.org (open list:PCI ENDPOINT SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
