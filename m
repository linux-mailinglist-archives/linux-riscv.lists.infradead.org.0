Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B6CC0E18
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urSb4Ogz6Obg8PG5e94DQ9wLB7vRAH0uY7bl/d+GRUk=; b=DtuE1K/6XxmMJX
	oKAlM0mWKa+h8ba4Rxsu85x2r8KsrMxiJkA0Rl4i7Zp1GSBvbjJPNq5TSZ6dhPyfnlNmA3UgxPkFE
	jY+aY7tXisO7ssxHXDmZenhOC1fmsQrn+YCq5bPHNYaHMMkxfIDZ0wGBySlS5d++3EMJuvzzT4Grk
	ejc42kVPnGif+R1hI4Rrym/BzE8PE1lzp1jungkh7W4QOXBxjWV0a4M8LSuS/2IzvKj0rcVI5SUJ4
	6xAa44NF8osShGoANboZg3oEpiQMbcThBWmYCY/Jd31bjdLiGbe/Hoq33Xsk61yB3C7PJrZQ4Q0Pq
	xrLvCsS2oGVFYuypdhew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDyxJ-0001en-Oc; Fri, 27 Sep 2019 22:43:17 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDyxH-0001ee-LN; Fri, 27 Sep 2019 22:43:15 +0000
Date: Fri, 27 Sep 2019 15:43:15 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 3/4] riscv: Correct the handling of unexpected ebreak in
 do_trap_break()
Message-ID: <20190927224315.GH4700@infradead.org>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-4-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569199517-5884-4-git-send-email-vincent.chen@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Looks ok:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
