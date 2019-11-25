Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17317108698
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 03:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gH2UFKk7faqEyOK1qR0w797oMIJaGQ1EeLWCWsphdQ=; b=Op5flgIk+8S7R1
	1BAQzjwZj2v91asIdMGbXum6iDPumAbq/uKoTR+seIGeftQ9fY8yqYlS1jrZ7STHNWjh4NbLmq+H3
	8xw0GQd4UwgX16YBptWFn6Gn12AbzZrjL+l/fgYHVsS6vU0Zw4EQ8I5jl7GmrlQ3/IRTE6ko+1rrJ
	asu+XLsV9ncz8I4tnbE8JZiNK2W0TprJmF9ru+NeBBOz9grVpNUGnLn43L3Yef8q7Lzdo1RWDSDM7
	wUOlxMfIylhDxUEp4o7Ea2n7UvRlJliU/pvmD2bozoxBqVVTlzJXa6uusBtexmtm13kTsX2AIjF+1
	GU5/J1Mb4rvQ38o1+2LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ4Qw-000814-09; Mon, 25 Nov 2019 02:49:02 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ4Qs-00080S-Hu
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 02:49:00 +0000
Received: by mail-io1-xd43.google.com with SMTP id u24so12760155iob.5
 for <linux-riscv@lists.infradead.org>; Sun, 24 Nov 2019 18:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JfC2mJ/tM0Gtil8eGoDF2rqsQ/Szyy5PK2H9MiBjWaY=;
 b=BqbheMcM+/+8L5FUajWmcRC1Jt2EFb2gJwq13R2AdKWr4u92cpi/Qku/FU9A2Eu+bw
 ynY6/cjU7Rtcg/TUulvsuyxfJbeMQqKE1Bx0d7bCGvwzC63FW/yS2hxaeTiWMC9Jp2uG
 vRibYDUPgmnMbpZYvsxjswCE6r9A/t7AaQPMd6/EzO+s01YSFOmtqZTeGwp1lgVm3eze
 y4DKreOlFHLvcUqPFKdhUhm4W51onBLMZZ1FAIwmxhjItpmYJcYkwxB7IFMbDBVSFV4x
 Eq8vviYfv3npRjVahtOivSpmld1ch/YnzuGoNXuN7vLSX7IIiNcR7DRQrKJ8lN3coW9m
 T7RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JfC2mJ/tM0Gtil8eGoDF2rqsQ/Szyy5PK2H9MiBjWaY=;
 b=YSRM0N/+oVLZO9TFuT6OnLHJ67HQw/E305zFCchIhAVq1AS8oF2W6UEFFNTSqAPSGc
 gq45jXIFJOE18JSt4KpfbfqDMe0H7nMVW7yekstolyIBYlb32OG809BCWYUSntV1NYf8
 8/9SD47cdLXwVULHXNaUSgQ5eapCyD+AsTSdgQ8EIWzHFiDgq06z2tv4B4dIZFP/Ducg
 EWHbiVmSUKU3jSHCVRhP7S/o1ojg5MiDbYzvXSusNEKWg2ZhY9yZwllwiFWztLjDkWlP
 7eOeaDZ8jA95Dc0U7Pmw9GugzL7M8iSrxHBjf3LcbhrA0gAuPTHb78WAYSFSrZIb561e
 tQ7Q==
X-Gm-Message-State: APjAAAV/21z1Q1y2hx3oOAvCrjjKrLAXzzzEbSKlUT/Iaaj5j4yKGkV+
 zhEYb2aPgZHBDPZ6UhSIWcqngw==
X-Google-Smtp-Source: APXvYqxgFYzEUsZQS6ILtiWRgw3rG7t6lwifkA15Te4VPLhoWxbBdRnWhS7ZYmL1Y/h4E9NFkL+lqw==
X-Received: by 2002:a02:aa0c:: with SMTP id r12mr26180623jam.75.1574650136249; 
 Sun, 24 Nov 2019 18:48:56 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id w2sm1790189ilg.51.2019.11.24.18.48.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 18:48:55 -0800 (PST)
Date: Sun, 24 Nov 2019 18:48:54 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
In-Reply-To: <CAPcyv4iqTR8s0v8jH7haWCBQAzhZinUEsypiH7Ts9FCf+F9Bvg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1911241841210.22625@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
 <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
 <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231546450.14532@viisi.sifive.com>
 <CAPcyv4hBNfabaZmKs0XF+UT9Py8zJqpNdu5KsToqp305NASKNA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231637510.14532@viisi.sifive.com>
 <CAPcyv4iqTR8s0v8jH7haWCBQAzhZinUEsypiH7Ts9FCf+F9Bvg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_184858_720916_CDEFD328 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 23 Nov 2019, Dan Williams wrote:

> I'm open to updating the headers to make a section heading that
> matches what you're trying to convey, however that header definition
> should be globally agreed upon. I don't want the document that tries
> to clarify per-subsystem behaviours itself to have per-subsystem
> permutations. I think we, subsystem maintainers, at least need to be
> able to agree on the topics we disagree on.

Unless you're planning to, say, follow up with some kind of automated 
process working across all of the profile documents in such a way that it 
would make technical sense for the different sections to be standardized, 
I personally don't see any need at all for profile document 
standardization.  As far as I can tell, these documents are meant for 
humans, rather than computers, to read.  And in the absence of a strong 
technical rationale to limit how maintainers express themselves here, I 
don't think it's justified.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
