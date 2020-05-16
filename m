Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3692B1D6160
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 15:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PUVFKIKk362JRcGphtZjBJWzUCMLzsdvCg2Pw5XCTP0=; b=ByhmCesJdXrKMuqu1sFNUga4S
	p6y7JJtkPWELQJUqCiB0tHTbIr//1/0S+hybgkE5La99N+nxnIYmsuh+qRNsHCeja9b5ona92OO0d
	Dzo8YZjoU5Av0h0HukgWUeM4sCd+tzJIqx2UIukB1/H6zhCVpOx2uu4BZ5Y5arqIGnTgn47rrcopT
	cwnZxV7PIoyqV9uvMXxrs2MA3DhVw93v1ex7I1OkjI16Q6GD4goYvAXLUDK781AOtzacfjMe2pPXs
	Jsoh7FldC5R2ILdE62UHKN2EhTKF59ladimBTmpdOU6y9cMZ1NTuT49bvRxTM4J/u79p55UxEMvtS
	FvUBlDd7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwwB-0006GR-Hp; Sat, 16 May 2020 13:33:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZww8-0006Fp-0d
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 13:33:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3EBC7B127;
 Sat, 16 May 2020 13:33:06 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: Crashes with CONFIG_SLAB_FREELIST_RANDOM
References: <mhng-42b47524-b185-4972-9889-69f824471fa6@palmerdabbelt-glaptop1>
X-Yow: I want to TAKE IT HOME and DRESS IT UP in HOT PANTS!!
Date: Sat, 16 May 2020 15:33:01 +0200
In-Reply-To: <mhng-42b47524-b185-4972-9889-69f824471fa6@palmerdabbelt-glaptop1>
 (Palmer Dabbelt's message of "Fri, 15 May 2020 11:57:57 -0700 (PDT)")
Message-ID: <87wo5ct376.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_063308_198949_3E8EE92B 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv@lists.infradead.org, david.abdurachmanov@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 15 2020, Palmer Dabbelt wrote:

> Sorry, I was trying to ask for a full config.

Oops, sorry.  Here's the full config:

https://github.com/SUSE/kernel-source/blob/master/config/riscv64/default

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

