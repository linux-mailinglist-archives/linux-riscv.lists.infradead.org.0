Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26AC2E26A
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 18:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=LqIRhS7OaoCvGbhdnNYC5yJlElQ9hvwCgvPLRtcJHTg=; b=VSJWiB6F0CXc1YanYKyyoiLin
	qW5a36aqEqQDr2rD1C4RFF6xumFZ9A/TvkbUig/5hCM6wmRAonCPn6qghPQmiriNuwaLwsiSs4bNR
	aqaLmDJAb2mls7HBRcCXzxCnL4MhMLB3e7c+4qeN7Cyf3D5At/o9FA0xoDnPS8lVq2VxOwxNnWWgj
	VrSUgMJxBBn9faUqcbnBZXawgme2W9XMOlK2lqgTVXYakvPjy/VjINdBvlfaSOV4G/h8FwSLJjPDq
	MkKhoMSWo6qRJCnUT1UMa9pIuuwfEwI5mlsXJYL/LrIaffewZb0Qq3HYIqaNTSU/IkiwoM6iSaj2h
	fHJrrcW1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1eB-0002o5-Dh; Wed, 29 May 2019 16:41:51 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1e8-0002nU-5n
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 16:41:49 +0000
Received: by mail-pf1-f193.google.com with SMTP id y11so1957524pfm.13
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 09:41:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=PDhUrA5/RrC3JM7DYbgnLMAMpwwCgpy6bnreDMvHf4U=;
 b=Br23QIS3ctuFpwt6u7Nmpwfg32e2RzQ9hDr4U2nvnKk/cFz/853OZISRyJwUqVJra1
 vCg9Z7EqnD1fnNtDMK39x0LwOkurXk00rNNELderHO4EinhV7szjWnfcT2VDqwcAGaUM
 kPcN2sg0uo+nzTym3s7rVj49Zd9L0pyR7NIXzBepqu3cwzYxbxcvJ11AHttSqw2OVNsd
 ToWQmxUtWbUjaiNqw5jE2bHahvqrmP7Io7b5R4PJKQoKhD4gYagRSxSCn6+lUe24pykX
 vdwC2+OqFMtkv4ScagHh2C41ep3+e0QXpa2W8KIkw+JwJyJCgTVS8QPsZ06wg99Y9mrl
 jWIQ==
X-Gm-Message-State: APjAAAVBLTTZVoMEr2G15+D/dNqNP10BOf1GjEkTnvpXh++Bsr+af/PG
 Wa0dP10IAAQKTEDCBbU5AzVl0VjJcJk=
X-Google-Smtp-Source: APXvYqyZ3V1656NRZe9sautQeFGu8evjanQeuikfzOH4Kg314/FswV7M7Zan7JmCuTha1Fo9ELaMIQ==
X-Received: by 2002:a62:ae0e:: with SMTP id q14mr6280675pff.164.1559148106114; 
 Wed, 29 May 2019 09:41:46 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 128sm180525pff.16.2019.05.29.09.41.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 09:41:45 -0700 (PDT)
Date: Wed, 29 May 2019 09:41:45 -0700 (PDT)
X-Google-Original-Date: Wed, 29 May 2019 09:39:12 PDT (-0700)
Subject: Re: [PATCH] riscv: fix locking violation in page fault handler
In-Reply-To: <mvmy336luba.fsf@suse.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@suse.de
Message-ID: <mhng-35399cf5-4e49-4d23-9a53-297a53c3d573@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_094148_215371_F6254FEE 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 00:42:01 PDT (-0700), schwab@suse.de wrote:
> On Mai 07 2019, Palmer Dabbelt <palmer@sifive.com> wrote:
>
>> LMK if you, or anyone else, has a preference.  I'm assuming this will go in
>> through my tree, so I've picked up my version for now :)
>
> You did?

It ended up landing in Linus' tree as 8fef9900d43f ("riscv: fix locking
violation in page fault handler"), so it looks like I did manage avoid losing
this one.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
