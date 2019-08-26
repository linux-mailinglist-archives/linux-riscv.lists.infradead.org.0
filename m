Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D339CE54
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 13:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5KN2A6NogYFwIejLoFjGSpdYVLcyOs7CaOhpZ52Cp8=; b=D48oNQujtKq+0F
	Yoiq+7dPIC0wEnQfrOx0pxGnvgfmP9aCT1ipqgd/JvWFlYAsurW+W4PI+2rI6Qla+tfZ9MDaHnjgH
	u+Zy2XAP+gqhGgzYqMqFuEDEcctVTdHVbazNUCuWG8EqZafpOHD2zdrWqhlugw/JBPKoct6AWaFg2
	FTIXKncVPEDh81ovVUcbE07ziECUkL6yhI6DqJ6VyjJdBiLF46h0hyN5FgIsxM8ZED7IKyeo7ONxc
	1rLyDnwSYmamW62YSSvav7Q3lOwWpMznpCRfz4o3jqRZ6xJ1Rv7SLAO7yIlartXiaS6B1O8UHJci7
	cW0B79hMZpVV5hRZ831A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DNK-0004OS-BF; Mon, 26 Aug 2019 11:41:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DNG-0004No-OC
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 11:41:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B1AAD68AFE; Mon, 26 Aug 2019 13:41:23 +0200 (CEST)
Date: Mon, 26 Aug 2019 13:41:23 +0200
From: "hch@lst.de" <hch@lst.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH 5/8] riscv: actually clear icache_stale_mask for all
 harts in mm_cpumask
Message-ID: <20190826114123.GF15002@lst.de>
References: <20190822065612.28634-1-hch@lst.de>
 <20190822065612.28634-6-hch@lst.de>
 <53f59546a691888c07bfb16780c6d5550b4be4fe.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53f59546a691888c07bfb16780c6d5550b4be4fe.camel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_044126_933393_D5623702 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "hch@lst.de" <hch@lst.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 06:29:35PM +0000, Atish Patra wrote:
> I guess you have added cpu_possible_mask keeping cpu hotplug in mind
> for future.
> 
> I think it should be cpu_present_mask instead of cpu_possible_mask as
> they can be different in case where some cpus are just waiting in the
> boot loader.

I don't think it matters.  The only place where we actually check
icache_stale_mask is in flush_icache_deferred, which only does
a cpumask_test_cpu for the currently running CPU.  So I'd rather
opt for setting a few more bits and prepare for cpu hotplug.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
