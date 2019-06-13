Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F324334B
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnbwqFkGB9twEnDkxWttbMxPEDxvj4SS/bd9kuzkGtU=; b=B91B/sv8rEuuJB
	VFZfIoqiD35Wf9pxA73esC1igV8sT7tMmkCwTaD1qHVLFWrR5Q24m6IoS9rJzXhDNj2T1gQXAO+BI
	R8TA4tH+0tWhJdSnjTu20y9eTYNU3bHSLKF6+O6Nl3XJRoQhgM6cz8E4MGIbhtR9Qh/JS+qk9wVqM
	N5KvhkSGPGqLgJzBOSrfvHIr21QMrNgDKaP3zVGxTAeaGC9e4jcfk4TGJrYca4H/Wggsm2cwrQRwB
	02z05s/VtwxQ05xEC2U9iIwT/TD+51KzBaQ9DbMBKpYeiFh+x0tbwFYdT2Q3WAufmYpc5Fgi5K9jy
	4J2oLQtIQKMV19UPw68A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbK6r-0001uZ-N3; Thu, 13 Jun 2019 07:25:21 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hbK6o-0001uE-Re; Thu, 13 Jun 2019 07:25:18 +0000
Date: Thu, 13 Jun 2019 00:25:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] MAINTAINERS: change the arch/riscv git tree to the new
 shared tree
Message-ID: <20190613072518.GA1327@infradead.org>
References: <20190613070721.8341-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613070721.8341-1-paul.walmsley@sifive.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:07:21AM -0700, Paul Walmsley wrote:
> Palmer, with Konstantin's gracious help, set up a shared kernel.org
> git tree for arch/riscv patches going forward.  Change the MAINTAINERS
> file accordingly.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>

Should you be added to the maintainers?  Is Albert still around, as
I see a lot of people Ccing him, but never getting an answer?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
