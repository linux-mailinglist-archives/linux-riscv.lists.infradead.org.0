Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50524CC7
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 12:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMFXgEZWcDSenV6Nda4mQxqUMj+T2ZM6OWHFqDyj+qM=; b=aVtp0JiAL9o4zQ
	lSMwFIKgEtGPPPLcuG1Kvtw30TOp+Ns5tEp6cIH1UE7cPY5h7l0ZSDcK8q8Q0fjOfNdPBTfNie9UQ
	SxfRTnUAcITJK6MIF+teB9U14hEyKVg4Yudq2UimrPGJrZr3wtlvNZHsj8+pbjhyMxetvsC7tkUyg
	jgQ235wolMsUuWHqNthLwkcDQx59wxA+Nmp4OciAhpw0cuhff4y+ehp7hMWVgWwLmjTE20lSYHx3b
	RvAonlvVhn/XjPZyJ0TzeFSNglUdNqF/BIwsQEopOP/bh2tsGBvFwkxwaus4N/qU2mWnoLJ9UHT9I
	AseL3N+dblJ3jTLXZDAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT25q-0000Uu-V3; Tue, 21 May 2019 10:34:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT25n-0000U5-Uw
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 10:34:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8704EABF4;
 Tue, 21 May 2019 10:33:58 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 9/9] riscv: call pm_power_off from machine_halt /
 machine_power_off
References: <20190411115623.5749-1-hch@lst.de>
 <20190411115623.5749-10-hch@lst.de>
X-Yow: Did we bring enough BEEF JERKY?
Date: Tue, 21 May 2019 12:33:57 +0200
In-Reply-To: <20190411115623.5749-10-hch@lst.de> (Christoph Hellwig's message
 of "Thu, 11 Apr 2019 13:56:23 +0200")
Message-ID: <mvmo93whzai.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033400_146006_368A8990 
X-CRM114-Status: UNSURE (   7.52  )
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Apr 11 2019, Christoph Hellwig <hch@lst.de> wrote:

> Also remove the pm_power_off export - at least for now we don't have
> any modular drivers overriding it.

ERROR: "pm_power_off" [drivers/mfd/rk808.ko] undefined!
ERROR: "pm_power_off" [drivers/mfd/max8907.ko] undefined!
ERROR: "pm_power_off" [drivers/mfd/axp20x.ko] undefined!
ERROR: "pm_power_off" [drivers/char/ipmi/ipmi_poweroff.ko] undefined!

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
