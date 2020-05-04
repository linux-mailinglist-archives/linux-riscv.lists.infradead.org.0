Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31531C381A
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 13:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vXhj1nsLldPemLQrj8yC2z1VNbJDXPH26iHSXU0qG3w=; b=P5CftC7b3oCDrN5zGkRGjp8jtz
	NjLW/jwPKIeBJsKjE5IOHTswyTQjwb0XxCIRtV4OuAWQ3tumMLtleN+b0k5Df+qtJxIXBG4Y7fFvH
	gNDNsQVYgjISnlmH7Q8MtSt0sGMmBWnTlUaqZ5uq+2cbX0oG4xVloT+iI4PCEvB6DWoXvu0kacZTO
	Zz/3XZaQMAH7U+pjXHEVT4l3J7n8EVzhE4VejtHU38i9XEUFGRcDwMqBxY8WV8kaX5yuenOak3JoE
	EticNAhM/8wRz0zQKNIA3v4+/myZwxRZgFbwHnCKrrj19JHv74EfXHn/Zw9oawYMXUbQgLO1xwy4p
	/yZkTPgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZJ1-00027A-6T; Mon, 04 May 2020 11:30:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZIx-00026k-LP
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 11:30:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 287E3ADC8
 for <linux-riscv@lists.infradead.org>; Mon,  4 May 2020 11:30:34 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Subject: Crashes with CONFIG_SLAB_FREELIST_RANDOM
X-Yow: Yow!!  That's a GOOD IDEA!!  Eating a whole FIELD of COUGH MEDICINE
 should make you feel MUCH BETTER!!
Date: Mon, 04 May 2020 13:30:32 +0200
Message-ID: <mvmh7wwq6nb.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_043035_844668_A98180E3 
X-CRM114-Status: UNSURE (   7.21  )
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When enabling CONFIG_SLAB_FREELIST_RANDOM, the kernel frequently crashes
pretty early:

[    0.165922] Unable to handle kernel paging request at virtual address 00000016e1694827
[    0.173081] Oops [#1]
[    0.175308] Modules linked in:
[    0.178353] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.6-212-default #1 openSUSE Tumbleweed (unreleased)
[    0.188074] epc: ffffffe00016f40a ra : ffffffe00016f44c sp : ffffffe1f6ae9c90
[    0.195193]  gp : ffffffe0009ae600 tp : ffffffe1f6ae3480 t0 : ffffffe1f6c19c80
[    0.202398]  t1 : 0000000000000000 t2 : 000000000000f8b7 s0 : ffffffe1f6ae9cd0
[    0.209605]  s1 : ffffffe1f6a036c0 a0 : 0000000000000000 a1 : 00000000000002e1
[    0.216811]  a2 : ffffffe000a08c18 a3 : 7fda5816e1694827 a4 : 00000001f7d06000
[    0.224017]  a5 : 00000001f7d06000 a6 : ffffffe1f6c19c00 a7 : 0000000000ff0000
[    0.231224]  s2 : 0000000000000cc0 s3 : ffffffe00043262a s4 : 7fda5816e1694827
[    0.238429]  s5 : ffffffe1f6a1a800 s6 : 0000000000000000 s7 : 0000000000000038
[    0.245636]  s8 : ffffffe00018a674 s9 : ffffffe00018ab60 s10: ffffffe1f6c19c00
[    0.252842]  s11: 000000000000000a t3 : ff633e17173e647f t4 : 000000f600000000
[    0.260047]  t5 : 000000ff00000000 t6 : ffffffe1f6c34258
[    0.265344] status: 0000000200000120 badaddr: 00000016e1694827 cause: 000000000000000d
[    0.273289] ---[ end trace 703a116d0e920a95 ]---

I think that means there is a use-after-free somewhere.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

