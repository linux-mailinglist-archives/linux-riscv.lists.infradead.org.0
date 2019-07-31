Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE8C7BAC1
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 09:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdsG6fxxCNlxNcvVSrVNVxbnzcrS1caOpIQjxVWsepY=; b=cnuqToGxw2r9dE
	vfrT0udoK5tesWQ7ZRI4q7n4r/FN72MUObT9SJt50XSvxpNaC1Xcf2mH2EvyIiDfmCq+uIAFU07Hy
	q+VosdcpRfAPeeQm4j7t8ai25iKYs5acZeppo1a8+f4pGhjBoBJ+JDrk5uB5NrjwTAPslZCGufF6Q
	HgRlDRwPRzOqbfff1FK3u37hb6ofVPB5KXnMculGsOuxL2Lz0F5mOrQy9ownXilJ3+qc5gq5IMnsh
	eLtfrXI6PIo0+eINSs4MyFwjupkvpor+e2m73FBdeYYb96S+PPsD0gEV0sSZavjuK9mJkgMXYpYVs
	eu3oZH0soRubRAGc0HJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsj6s-00048P-Dr; Wed, 31 Jul 2019 07:33:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsj6p-000484-55
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 07:33:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8C90CAE52;
 Wed, 31 Jul 2019 07:33:13 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: 5.3-rc2: Found incompatible CPU
References: <mvm4l33adof.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301502240.4874@viisi.sifive.com>
X-Yow: I'm in a twist contest!!  I'm in a bathtub!  It's on Mars!!  I'm in
 tip-top condition!
Date: Wed, 31 Jul 2019 09:33:13 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1907301502240.4874@viisi.sifive.com> (Paul
 Walmsley's message of "Tue, 30 Jul 2019 15:09:56 -0700 (PDT)")
Message-ID: <mvmwofy8xqe.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_003315_343256_4D11711E 
X-CRM114-Status: GOOD (  11.11  )
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

On Jul 30 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> On Tue, 30 Jul 2019, Andreas Schwab wrote:
>
>> Trying to boot 5.3-rc2 on the HiFive I'm getting "Found incompatible
>> CPU" for each cpu, which means that of_device_is_compatible(node,
>> "riscv") is failing.  Any idea?
>
> Here, v5.3-rc2 boots cleanly with upstream DT data, using BBL.
>
> I've noticed problems in the past with some bootloader configurations when 
> the DT data is loaded too close to the kernel.  When the kernel is 
> uncompressed, some or all of the DT data can be overwritten, which can 
> cause mysterious DT parsing problems.

Using the latest openSBI (which moved the FDT further away) didn't help.
A fully modular kernel isn't that big anyway.  And the fact that the
cpus are found in the first place tells me that the FDT is intact in
general.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
