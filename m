Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28238F796A
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 18:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xQ483ju8mEuutfJ6R2FRy2fEp0m3yxEL+4uSOBOzeQ=; b=fraICK2zv/kI90
	JXtDHqBG5WR+Euf6z1LH9RnyIn4TLPCcsRUROFo3xH1a8SlOBVq0+sTlGdM9KorOeCJog5RRaGWz6
	tCB32dsm2pL7EAnLc7yk0rz9c50ec0O08HvA9cIeqTKS+zXTYumq2SL2P7KpaOBhfcvItPVLCFwqU
	dDwjKZf9aFMWWm55u+nbvAAfH0HB2zhIcHbKzLfc8mWnPnHNTENOAT8ugXmwa68rrqnTZFQaAfZiz
	BiGjY5ZTNqQmoUFkqw3+u7Qon5JU2RvWpdSoa3w6ByDpuOKUFxbfe0e13jF2OrWcxOH5O2Rbv8C+a
	iyFXGNi8MehN5o4N5HLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUD5f-0006zm-Gd; Mon, 11 Nov 2019 17:02:59 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUD5c-0006z5-Jg
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 17:02:57 +0000
Received: (qmail 30818 invoked by uid 1019); 11 Nov 2019 17:02:51 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 11 Nov 2019 17:02:51 -0000
Date: Mon, 11 Nov 2019 17:02:51 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: RISC-V nommu support v6
In-Reply-To: <20191111094729.GA11878@lst.de>
Message-ID: <alpine.DEB.2.21.999.1911111702030.30304@utopia.booyaka.com>
References: <20191028121043.22934-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1910301311240.6452@viisi.sifive.com>
 <20191111094729.GA11878@lst.de>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_090256_722580_44333252 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Mon, 11 Nov 2019, Christoph Hellwig wrote:

> what is the status of this series?

At the moment I'm waiting for acks from other maintainers.  Could you 
please chase those down?  It's the responsibility of the developer to do 
that.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
