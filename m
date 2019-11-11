Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E297FF81EC
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 22:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxVP+aS1pVM0m6JZuJa1YmAmVoNnTeo6XOjz/O67F1Y=; b=m0XIDso8r+L1F7
	nVtY7MRjX5P0eTAcWLN0z10c8UpoXVEMGseXs+lrfWrUsl/zS8OvBRga2vLeTCewZJ2z0KwUOT32O
	PSdlmMXGmLlPb1aEt54CGyedhBaOlWXUlfEYglQ2VRwLly1/ybppZa0Qjwu55hBI++pQKRw18w0wj
	0ehR6jZ+ifoLccoHYNRE+qvy2x598ZLVqICNX91iZI+SY5kIlYozNbu81z+waH1lmEEcRo7ed1i3X
	kL3rpvTyqL7wqVekDkVl6GPokngmyltOT8UELbPTcztLAZJQS6rYaq8JiJfEdHxMw9T4n1obPz1lG
	80gPvddUmoFphv0ldMgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUH1n-00030I-74; Mon, 11 Nov 2019 21:15:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUH1g-0002ae-GG; Mon, 11 Nov 2019 21:15:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 58C6368B05; Mon, 11 Nov 2019 22:15:04 +0100 (CET)
Date: Mon, 11 Nov 2019 22:15:03 +0100
From: Christoph Hellwig <hch@lst.de>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH RFC] PCI: endpoint: Add NVMe endpoint function driver
Message-ID: <20191111211503.GA26588@lst.de>
References: <1573493889-22336-1-git-send-email-alan.mikhak@sifive.com>
 <20191111203743.GA25876@lst.de>
 <CABEDWGyMrDnuR+AzazHqpiHC9NrHFoVcW5iFREOey04Hv7xLqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABEDWGyMrDnuR+AzazHqpiHC9NrHFoVcW5iFREOey04Hv7xLqw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_131508_697985_F69ECE1C 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 01:09:17PM -0800, Alan Mikhak wrote:
> Thanks Christoph. Let me repeat what I think your comment is saying to me.
> You prefer all parsing for nvme command received from host over PCIe
> to be removed from nvme function driver and added to existing fabrics
> command parsing in nvme target code with new flags introduced to
> indicate fabrics vs. PCIe.

At least for all the common commands, yes.  For Create / Delete SQ/CQ
I am not entirely sure how to best implement them yet as there are
valid arguments for keeping it entirely in the PCIe frontend or for
having them in common code, and we'll need to figure out which weight
more heavily.

> Any more thoughts?

I'd love to eventually find time to play with this code.  Do you run
it on unrelease SiFive hard cores, or is there a bitstream for a common
FPGA platform available?-

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
