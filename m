Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2CD7C273
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 14:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWMEFhDnMAATlulk7961LPqeqFE4674U+b1Xy57cC2g=; b=lJ2KARrVB1aQPk
	5rskYqYBXsjjDwEbzEh/qb8/QWmrS4gVREaznxpou4f1QHH2BxE+BUg90Mic5mx3iHLfA7f3upIkW
	uo87yNCpL8pKEtB/3iZQexJVsulT+lf3oGjWea2ck45q2aYyXf1PNOpdn8bvU1dYwjP/uSEpBkGHr
	RMh4rStHJl42rIYNOAfrNGXgMKbB3IAWvhgIfHumQ+7qppSt+vA29YXutoA11keoIW3PNssWEyp7b
	6gIPZpQFGO9Z9fIhpvo6X3ZZNXXfwJe8UbtELTQAPo33Ia5MTlbW+1jRFHVj416bboFr554nVJKW/
	JDbUunKV2YqmRc7txaLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoAx-0007gU-5r; Wed, 31 Jul 2019 12:57:51 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoAt-0007b8-3k
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 12:57:48 +0000
Received: by mail-qt1-x843.google.com with SMTP id k10so66478190qtq.1
 for <linux-riscv@lists.infradead.org>; Wed, 31 Jul 2019 05:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YgnLAKLufivOrqZFxbDlu0ei8AOp1tT3NDUMKHzOeXk=;
 b=PZgGYI162CwLbs8uLOygXLbz2ZTqtzLwSFHlCqt7zvrY6R8SJFkLS6Uj/wl3hG+Fgz
 tGTommPP/idfsyT5kVdoweK+eiedU2rUTbr8jltc9wS5ZPpa+xhd641apVYkv5GlExh/
 Fhtp70a04k9dPZD2+vMkD0PcKNv8d+lR2CRw0Ptd1OShBi1f9xgqX33leOWN3ZcDWW4o
 9Ins7KsYlrPoJe2gIJrdW+yKGtDIndjoglGFbqM/ZbdQQwsNRYPy2XSSb48ASs1sKdGl
 Hly3d0IfwXd45hoKYf8B3kjq9n/YqA5RJPzu8XRGjf+3LB5o+QtE5tUyu9o5z7EBinSx
 sLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YgnLAKLufivOrqZFxbDlu0ei8AOp1tT3NDUMKHzOeXk=;
 b=r5e9ndR9RygB3WGXPcVhnw/wkWP5cFPbJCFakjLs9nRWqwAYby7VGzh/0tzcb0cIHm
 hKdVChfT33L6dpG3Go6VTH7mf17I4lG1Jxpqlv84WMYLq1Bi3RpctLQjlENVfap4w/0e
 cf2GY6ibrSbCKeFat1Djw3yzeb8fRkgjBicTfYE+OdFlH1noGHZx4cQdQbdoCp7NZgLb
 /+qcELIix+M9CMYh+Wz1bXUjxGuX3rQ2zTk+dYcq2wlR07GmDu5BV5aLVbWldwrQz8St
 l2HDMV6Afet0WD97A38TiXQngbG/NxPrkh1XRpibYObvJqd3bWX958mKzA1+8Ywqd1oG
 Mp/w==
X-Gm-Message-State: APjAAAWCk2gfsBIGlRAcgT80psaXnbT5qa52TCucGY288Pzk9nStGHt2
 Cz3qlkb/y5IZ7eU31ucMQXq6Mw==
X-Google-Smtp-Source: APXvYqxyYMGbM0LSzEk8fB5Lyco7uM+LTYS7HjWIIr3xZ830bNc14kgRNrwTX5jRIWwBDa2xilfDXw==
X-Received: by 2002:a05:6214:601:: with SMTP id
 z1mr70558383qvw.197.1564577865475; 
 Wed, 31 Jul 2019 05:57:45 -0700 (PDT)
Received: from [192.168.62.194] (71-34-183-103.desm.qwest.net. [71.34.183.103])
 by smtp.gmail.com with ESMTPSA id v75sm32497256qka.38.2019.07.31.05.57.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 05:57:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Random memory corruption with v5.2
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <mvmftmm8q10.fsf@suse.de>
Date: Wed, 31 Jul 2019 07:57:37 -0500
Message-Id: <4E88AE22-DBAC-4EA2-AA42-CA5EA7ACB233@sifive.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmftmm8q10.fsf@suse.de>
To: Andreas Schwab <schwab@suse.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_055747_204375_E0AC3CA9 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Jul 31, 2019, at 5:19 AM, Andreas Schwab <schwab@suse.de> wrote:
> 
> On Jul 30 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> 
>> - Commit bf587caae305ae3b4393077fb22c98478ee55755 ("riscv: mm: synchronize 
>> MMU after pte change") 
> 
> When I revert that commit, I'm getting soft lockups.  Doesn't that point
> to some deeper issue with TLB flushes?
> 
> Andreas.

What are you using for filesystem/storage? Is it the SDcard, network, or something else?


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
