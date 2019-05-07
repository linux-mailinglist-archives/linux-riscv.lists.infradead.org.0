Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A951656A
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 16:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFAzSWBthtajvdz3bzYNVO+EtMLAIZTTUClJGavRyS8=; b=cOhsrsrLQqTPG/
	L3P1vtpfjPlQuxwq50rAegLbrYUc3jm5MFpZf3owJKTP6jCgToXAcwaQA/8Wmo0WtN+F39FeaAvYn
	TLM6clqQdVxT4jf2wbhNp5p3Scl53cr+vPlC4KaFi8hYwen/DnCdjE9i6fnJ+Z3Xq4wOKHhYaN8vC
	XIfv85qTTgtrfLREmj6irXBDWyZkN/TXX6XYGVISTsPQp6+W5IrW9KzWWt7ZbDiCzmqxAeOIzfaQK
	Onji15hXvZC00vdf30rRKUyP/3n987fOGObhOYoWcIi9bJSsVXEyQ/SAPwgUkDhsVGqJ9H57rOxGk
	zKvKy51K1yE8GMhRZRTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0pJ-0002fC-Sm; Tue, 07 May 2019 14:12:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0pH-0002eg-BA
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 14:12:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D9DA2AE47;
 Tue,  7 May 2019 14:12:08 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH] riscv: fix locking violation in page fault handler
References: <mvm5zqmu35d.fsf@suse.de>
 <b2030f8c-010e-7088-271e-e2398f7d37db@suse.com>
X-Yow: A dwarf is passing out somewhere in Detroit!
Date: Tue, 07 May 2019 16:12:08 +0200
In-Reply-To: <b2030f8c-010e-7088-271e-e2398f7d37db@suse.com> (Nikolay
 Borisov's message of "Tue, 7 May 2019 11:04:58 +0300")
Message-ID: <mvmmujyqrpj.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_071211_530132_583A278D 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 07 2019, Nikolay Borisov <nborisov@suse.com> wrote:

> At the very least the code under
> no_context label could go into it's own function since it just kills the
> process and never returns?

This is not true.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
