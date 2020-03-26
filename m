Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9FE194421
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 17:17:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfGF8y3/6vcwYWjtaZyIkK6AJFhIURCxE/sEYU8BVHM=; b=fLwNeXk6nbKjzF
	0b/MkgWHzCwNUY4EFGdzxJu1xhiSD9vLo8iAYafUbTxeR5i75UvOibE/Qx5WbHvjtjGyy+W/LDNN4
	UMWQkxgUoxZHl70UQyC6+HZq6YDI935qzWeCfXDQhVh4+A3oFV5cybnk9dEk11Z1IfMzRhejuE6EY
	sHSdV3M1ZhTZErmv71jF1DwSUkkm1cDMXaWoRw16wqmJNZ0wb8EaHVdzASBMVTzmY/EILdyu2yFNq
	XaQWgRyhgQQf+Ja/ohc/sOFc5Nh3Q1W1XfGR2Zj1sQ3DWZ/bRj5IlL6Y5qnA8oOG1+Wkj/qYX+xWX
	cxZ2Z5inYbCD+2ZMUajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVBw-0003C2-G5; Thu, 26 Mar 2020 16:17:12 +0000
Received: from mail.efficios.com ([167.114.26.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVBt-0003BB-21
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 16:17:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.efficios.com (Postfix) with ESMTP id 3EF6F278187;
 Thu, 26 Mar 2020 12:17:07 -0400 (EDT)
Received: from mail.efficios.com ([127.0.0.1])
 by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id OhHjHl1pXjeQ; Thu, 26 Mar 2020 12:17:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.efficios.com (Postfix) with ESMTP id F3D5C278186;
 Thu, 26 Mar 2020 12:17:06 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com F3D5C278186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=default; t=1585239427;
 bh=yfGF8y3/6vcwYWjtaZyIkK6AJFhIURCxE/sEYU8BVHM=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=VrkzUYw7ljYE9ZaynEDEZSKCkvSslxsNn7fbwTiQ4EXYQhTJrj8Y8QNql9pH4r4MC
 4V+VIeXD0L5XNxKi1YYFSJWF2ea+6iq9uXxuWm5MriWRvg9+xBLzd5yftW5otrxDPs
 Sm7wAKVIsQ4Y/WYCNNbrbJ6XyGm4HPa4lHA3T1sKzGJpWzOQ5hwOnRW6anX6LgDe/B
 xZ8e40oOR04qFXczRTzzD637M2yiehRUfYCxc6YgbfcjcwAuCoqd7B66jt9HsRh7Rr
 /yO2IyMVoDo969+6NgK8dpiw88htGlteLMsB5YXivF0LQ1XaCq06ZRvRC/JZB1VETd
 ygvLkRXYj68Tw==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([127.0.0.1])
 by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8cLdYGRVPu8v; Thu, 26 Mar 2020 12:17:06 -0400 (EDT)
Received: from mail03.efficios.com (mail03.efficios.com [167.114.26.124])
 by mail.efficios.com (Postfix) with ESMTP id E80ED278112;
 Thu, 26 Mar 2020 12:17:06 -0400 (EDT)
Date: Thu, 26 Mar 2020 12:17:06 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Message-ID: <490218026.13345.1585239426829.JavaMail.zimbra@efficios.com>
In-Reply-To: <mhng-e1457171-db30-49be-9e98-298f4d1453ed@palmerdabbelt-glaptop1>
References: <mhng-e1457171-db30-49be-9e98-298f4d1453ed@palmerdabbelt-glaptop1>
Subject: Re: [PATCH V2 3/3] rseq/selftests: Add support for riscv
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [167.114.26.124]
X-Mailer: Zimbra 8.8.15_GA_3918 (ZimbraWebClient - FF74 (Linux)/8.8.15_GA_3895)
Thread-Topic: rseq/selftests: Add support for riscv
Thread-Index: YI3KdsKu7N2vjVdS5o5Dpon/zWRp1A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_091709_174596_E629B407 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kselftest <linux-kselftest@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

----- On Mar 26, 2020, at 11:49 AM, Palmer Dabbelt palmer@dabbelt.com wrote:

> On Sun, 08 Mar 2020 22:59:52 PDT (-0700), vincent.chen@sifive.com wrote:
>> Add support for risc-v in the rseq selftests, which covers both
>> 64-bit and 32-bit ISA with little endian mode.
>>
>> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
>> ---
>>  tools/testing/selftests/rseq/param_test.c |  23 ++
>>  tools/testing/selftests/rseq/rseq-riscv.h | 622 ++++++++++++++++++++++++++++++
>>  tools/testing/selftests/rseq/rseq.h       |   2 +
>>  3 files changed, 647 insertions(+)
>>  create mode 100644 tools/testing/selftests/rseq/rseq-riscv.h
> 
> There are a ton of checkpatch errors in here.

Is it just my mail client or the main issue is:

ERROR: DOS line endings

?

As far as other issues are concerned, I know there are a few checkpatch
false-positives that trigger for my rseq-{$ARCH}.h header, from which rseq-riscv.h
is derived, because it has issues with extensive use of inline assembly.

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com

