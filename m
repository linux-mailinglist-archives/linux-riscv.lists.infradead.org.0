Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D25320074
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 09:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGNKxx2iLkgJQwFCa2G9SGQ2Fvcy9Seds5hKPqWMqRM=; b=MLRtQg+nraPM4c
	7HYw/FTdwYcAzrPbQ+wkq53CnRCBFt7pHeVGqaI8TuUS32UdIXkVXSOq9lPKppsW6W1ff6CtheSKV
	5qhAv/OzjutIJ9Yt6z9nw3uGi4RKCoVinR6Nvhwtn7D/GKxCSdHFVwfbQrGqTtU9wFzv72SDepNnu
	BvCvswCCImog9AaaTA8QhXiiCmPZozs4EWXJDH1+EnD1Wi07w005Cj0ShUzyJOyBG3Q6N+xO9S7cd
	zRWfmP4ngwPWkwX8TDTfWWW7jCBxBbIg7cBf/IlPgtHhh1mHizdk9tMvfIoKORsdm+bctrcLfhI0V
	Q/3ELzQ10P+8HP0H1zkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRB1k-0005wK-G4; Thu, 16 May 2019 07:42:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRB1h-0005v6-GW
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 07:42:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6E188AD49;
 Thu, 16 May 2019 07:42:02 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] riscv: fix locking violation in page fault handler
References: <mvm5zqmu35d.fsf@suse.de>
 <mhng-56794b7f-6cd4-4eb9-a962-83ad256ed3cd@palmer-si-x1e>
X-Yow: Don't SANFORIZE me!!
Date: Thu, 16 May 2019 09:42:01 +0200
In-Reply-To: <mhng-56794b7f-6cd4-4eb9-a962-83ad256ed3cd@palmer-si-x1e> (Palmer
 Dabbelt's message of "Tue, 07 May 2019 16:48:03 -0700 (PDT)")
Message-ID: <mvmy336luba.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_004205_697070_8ED928CA 
X-CRM114-Status: UNSURE (   6.81  )
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

On Mai 07 2019, Palmer Dabbelt <palmer@sifive.com> wrote:

> LMK if you, or anyone else, has a preference.  I'm assuming this will go in
> through my tree, so I've picked up my version for now :)

You did?

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
