Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372751241B0
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 09:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wYeFkI6owIUbC8hrFV3LHdXnmmmYBLtuevxuoKXn3os=; b=N4wb12xRlx8EDmG+96PfsFmlS
	E9ODHKb1Jgb98zNoEUY6Tva3yaFVQkpCMdX1XMIt09WUdNgTzgdezTN2mIkdgsVNyh1j3VKuL9Fi0
	8SgzX9lrUEDzAYP3sb85gq6zkIFJYC1LhWDP4Z7j/sqE2CW3XJ/Ll5daWs3ONaLqUY3gk6HMS+N6f
	uCfpKXCx84pBHLbN6lLcIxvUO/Nis3xXAa/xybc2gHRNH8+2cOX15K92DLw1KVqGOhikEGfJZ87Lz
	mGFdTHSZBL1P4/ZxSnN5f0qmcIrUYZ/tnz/1ZPXh8LEUqtN8TbM/FLPs5+2a0fRxsNrPxYsTFj2LZ
	/YCjPv6Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUix-0008UV-Rq; Wed, 18 Dec 2019 08:30:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUiu-0008TL-9d
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 08:30:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7234EAC52;
 Wed, 18 Dec 2019 08:30:20 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH] define vmemmap before pfn_to_page calls
References: <20191217131530.513096-1-david.abdurachmanov@sifive.com>
X-Yow: Yow!  Now we can become alcoholics!
Date: Wed, 18 Dec 2019 09:30:19 +0100
In-Reply-To: <20191217131530.513096-1-david.abdurachmanov@sifive.com> (David
 Abdurachmanov's message of "Tue, 17 Dec 2019 15:15:28 +0200")
Message-ID: <mvm8sna5944.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_003024_483342_781D71D7 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Yash Shah <yash.shah@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Logan Gunthorpe <logang@deltatee.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Dez 17 2019, David Abdurachmanov wrote:

> pfn_to_page call depends on `vmemmap` being available before the call.

Only if CONFIG_SPARSEMEM_VMEMMAP, as it seems.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

