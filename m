Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BE297DC6
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 16:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PtSmf8UKLw6E2E0W/L7ml/ddcBApuATyqZUopdSq4do=; b=s1mifhxdxctZaY
	QW0dddgjYAhCJcluMB048xhxxLFYcRh8TKmU+aNEblwC9Ifsf9VgKBpGYrChm3+60XCHhcAdG5T5n
	fL8nszmL/QYqsSmmVaAiUD15l81rm4crO0V9RfGAMF2+5zcM3NUQOnE2CKy1vrkbZJPt4UmBV3pfZ
	JFHq+rMEFElL7+BIxvV/qf63Yjm5ndC5/Vl83nS+eAzD2lu3JmtD7zcyRXt3yt8+hm6n9YPvP9xku
	o1JI8lXr6q72O1tCIJX/vLgKkPoUDFM8wKGIB+YOlBqAND3IsRPnH3obkpHllh9Mq2iUMVzt5LuHf
	1VkaNNjvPEeoQ0I7u+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0S4P-00062E-IU; Wed, 21 Aug 2019 14:58:41 +0000
Received: from [182.171.81.139] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0S4N-00061v-Jw; Wed, 21 Aug 2019 14:58:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: misc riscv cleanups
Date: Wed, 21 Aug 2019 23:58:31 +0900
Message-Id: <20190821145837.3686-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all,

this series has a couple small cleanups and micro-optimizations
that resulted from the nommu work.  Pushing them out ASAP to avoid
conflicts the tlbflush work from Atish.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
