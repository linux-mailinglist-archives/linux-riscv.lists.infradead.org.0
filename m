Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42D6D5EC1
	for <lists+linux-riscv@lfdr.de>; Mon, 14 Oct 2019 11:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGqZnINSVe1O3NbIXGlqr8JUx1sSs1OuuMreZQbdXQQ=; b=ZaX528ntwDw9pc
	o4Q3qe53v/9bnmOXwDDQngZRUsT8gen39Sf7WXT7ZBRPERqMTkjAQRfhwlEIjuJkr7k0PPtMMZ/SD
	kpWKGVl3zm5ROp+P/6NXkhzO2M3m3pw27/JKRMFY0UoRuSEkh83Hxb/0QO10qQlOY8Hktf7lGV7ZG
	nqao6tbozCYUWbIAJeMEDhToWqwVuVqRXxYhhPTpkxvy+zG5KxIhc+MONUtM2yA5sfTFxLeh//WmC
	AkgH8V8AO4uWgWd8DY5xrAMx+YdS8Sty72qxqASLtP2SGD4OyBrYPK3Tj3BRSZZkwN9LCV0KVFdYm
	Jn+A3ukcKxLZ4uY6gcnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwaD-0003Yi-RY; Mon, 14 Oct 2019 09:24:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwa9-0003Mt-Bm
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 09:24:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9F6A5BAB8;
 Mon, 14 Oct 2019 09:23:49 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Aurelien Jarno <aurelien@aurel32.net>
Subject: Re: Fail to bring hart online on HiFive Unleashed
References: <20191003200735.GA26760@aurel32.net>
X-Yow: TAPPING?  You POLITICIANS!  Don't you realize that the END of the
 ``Wash Cycle'' is a TREASURED MOMENT for most people?!
Date: Mon, 14 Oct 2019 11:23:49 +0200
In-Reply-To: <20191003200735.GA26760@aurel32.net> (Aurelien Jarno's message of
 "Thu, 3 Oct 2019 22:07:35 +0200")
Message-ID: <mvm5zkrhe8q.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_022401_611125_095A9C1F 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Okt 03 2019, Aurelien Jarno <aurelien@aurel32.net> wrote:

> Any idea what could be the issue?

The last time it happend to me it was due to insufficient initialisation
in opensbi.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
