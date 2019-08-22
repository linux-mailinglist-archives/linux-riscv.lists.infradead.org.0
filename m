Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114D398BCB
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 08:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H5w2px2oOUdlPdkuKjO3yMPIdNYQYeHB/9hPdvmNC9I=; b=SbsVQukk6FtrtO
	oXIVcsg6mXBWGd19X9sQV/IJoqe8mB7r9LmwOZTat32Qd+g4yMtUlrwq2MYmR6PD9neHBHOcqYjuA
	oHTcLKZZkiq7VxD7uO4jTfLeCCcA2DOIYyEK1F8l69PHpK7mXt1tkEMcxOUXcfKRY0l1mb8+f/EhS
	9uo7DZOTmosgayt6uBljMQy5mN7XNZou83HHtEKnt7WT89R6DpMrrHzSlM89QCeSmFsD4DPwtx3Yi
	tFUPBWkw3KCzdLZFb2Awai7K5/hnHvTkkPLyfgobE1b8Dhej7p0e4gpTUiQt6QCgGFcqQb0vLO8/e
	uX8lvr98nxOfQgdTGvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h1A-0008Gf-47; Thu, 22 Aug 2019 06:56:20 +0000
Received: from rap-us.hgst.com ([199.255.44.250] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h15-0008Ci-7B; Thu, 22 Aug 2019 06:56:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: sys_riscv_flush_icache
Date: Thu, 22 Aug 2019 15:56:04 +0900
Message-Id: <20190822065612.28634-1-hch@lst.de>
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Palmer and Paul,

as part of the nommu work and various mailing list discussion I've been
taking a look at the sys_riscv_flush_icache system call, and found
various lose ends, including the local flag which seems completely
bogus.  Btw, are there any test cases covering this system call?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
