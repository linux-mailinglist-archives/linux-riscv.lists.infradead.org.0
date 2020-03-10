Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF5A17F4F4
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 11:21:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGseYenZvW6fGMcvZyVaRbEAZpAeyP78sOHTazv9RmQ=; b=mc7ZN4kS3DB57A
	OcorCByWUSgNFKUe6u2ehpmN/4YQBiderbmZoYGxNerUjW13V5oaGEKtWO+CNgBYHmMJPZ85YmSR+
	Vu/1iOG/TLCrRx9B1MXUrZL7DmbtjjYsElxIAS73/pksgUwoAP675imgX7GBKA+jWip1oCo3gxFPS
	4Xul7AP/9RqAHocQHhiRP4b99UzeXo7KpbCG8v5q+xf41yGClxejEdsQRXdakvwsOZhYckFoIc8P5
	/Th0aBPQKUmPtXjEHr1BZzmzCHvoENPfqTXzPOOiGR4RUpfta5PWsennqVC2+WCtszOSwUu3gpA2m
	fINIB5zRa4G1rIbKhrGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBc0u-000192-Sx; Tue, 10 Mar 2020 10:21:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBc0r-000182-AF
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 10:21:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8DE20AEB1;
 Tue, 10 Mar 2020 10:21:21 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <20191125132147.97111-2-anup.patel@wdc.com> <mvmh7yx4z2u.fsf@suse.de>
 <MN2PR04MB60611C6CE40C024E336C8ADC8DFE0@MN2PR04MB6061.namprd04.prod.outlook.com>
X-Yow: I'd like some JUNK FOOD...  and then I want to be ALONE --
Date: Tue, 10 Mar 2020 11:21:20 +0100
In-Reply-To: <MN2PR04MB60611C6CE40C024E336C8ADC8DFE0@MN2PR04MB6061.namprd04.prod.outlook.com>
 (Anup Patel's message of "Mon, 9 Mar 2020 10:24:05 +0000")
Message-ID: <mvmmu8objdr.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.90 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_032125_501265_0E8EFEE9 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mär 09 2020, Anup Patel wrote:

> Perhaps selecting DRM and NET_9P from SOC_VIRT will help. Can you
> try and send patch ?

No, the config option should be removed.  It is useless.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

