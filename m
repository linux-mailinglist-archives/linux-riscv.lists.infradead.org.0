Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66E62E36B
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 19:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EaX7PY2Kr/L9uj9mHjVO81ooK2f5rMQZiyPFEKcOwWc=; b=ZdwtTXGIF11WY3
	OEmzkWDy5SZEYSQKD8udEAfw4UxhVa/2Oe9k3q2khR40rYzUv3PxT5/dZd+PqLyFzpHpKCoxlITDR
	E1x6D5ns2CpB0jgoLNG6JRl6t9fh80C+ZgnHLzT9FEhhPj370TjPo6ZlXxtRhfFAbA7nlGkwiOJ8B
	6Uu3+d6NaiWiAR9vgZ0yKemh1aJd/y+2f1WMJG4TXFkGhVx+d3O/qcHuiY54QUnxePBkzaait+Vi/
	mVZXXppD07p7k0Iv/EXbQHbqsHvKOYSrfY9whjhf1AllwScCUr/NK4a/E/w/OzVvceCjd/l0fOCsY
	v6I0iCaH4GVlti6CaE8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2XK-0004tD-Hu; Wed, 29 May 2019 17:38:50 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2XG-0004qH-CH
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 17:38:47 +0000
Received: by mail-it1-x143.google.com with SMTP id g24so5293203iti.5
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 10:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=erIvyUwsLoBc9Pa5c7rZIF6VUUBG9TsjLIH/Dvp4kUM=;
 b=WYqflFRU7GW/+8002CKD6/J0qjy1Bf0B3m24jODnHBBbtgjDJsb12n6m9A28Z6J15+
 L7cUYwaRHD+vp52COmITqjV1n7pyUFVoAnhBqnx2K8/DTMRghakTYzJRhsWZjv0rnTxd
 VfTQFAQtGJaHjkvm1Q6x+rJtIKU/UBYFlm6mBYAxXEhjfRfdA1X9Akv1uwqi+49i8v13
 I1CwK7CAIqDki7/PGyOHsbKNOYAZtDMyqTYFbrN0SFhy+49RA8/q9mZSx7cZgli9OwSy
 KEw08CITroL5nEAN4hUeLSiMy8ObRVpxH8Y2ADQpqn6xcR7U6Wip9prSehfKUcrqcQmb
 Arcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=erIvyUwsLoBc9Pa5c7rZIF6VUUBG9TsjLIH/Dvp4kUM=;
 b=kKFyjlSmm4fAlcX39xBRaVC3ANxOOkHuU85esedEkkau6vQeyNcogwI+h8N/U/K9Sp
 1RoXnz/ZGMK/5bkbmLFqOPX7/nB+NGwOcM/dR22IsY1tG3UesGDszQKVrzeBY+uh3ENp
 Tu/IxJiImzYDdW+0GjKJg72v2NFaIV2JyTzNbwMRgkiitQUvmJVZTg1TKbM610fdY8qs
 tOKmtQ8nUAJ27V3TxKJC/K18r416TiCzy2WvHWx75jtpDhs17F8gRQ/GS7kSknAUGFWn
 lN5eB+rk72GF3ybGS+pDwOnEpQlFXKphSxSBZuSSvBHrjr0G1/ebfWfKaWUAdBYgGR5G
 7lwQ==
X-Gm-Message-State: APjAAAU2WLH0mralDWQ9ihpSfTv+V52fNSiRj53kIUy6+T3UCbfg/lrR
 cl/jiCc1rDxxSvKmItQE0U7PnQ==
X-Google-Smtp-Source: APXvYqw+5G9TFIiClVK7sH9x8g9/BvZvh/Zn60mkJ5TLYGkhQyGr4FbJZu7k603xp45Hc60/yhGRqA==
X-Received: by 2002:a24:4d01:: with SMTP id l1mr1858209itb.90.1559151523915;
 Wed, 29 May 2019 10:38:43 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id k203sm1210240itk.41.2019.05.29.10.38.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 10:38:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <mvm1s0hd5ln.fsf@suse.de>
Date: Wed, 29 May 2019 12:38:42 -0500
Message-Id: <E42C85A7-47D6-4A8E-B9C8-A5D42057A3F3@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
 <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
 <MN2PR04MB60610DD66EC6E93C25D18F5F8D1F0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1s0hd5ln.fsf@suse.de>
To: Andreas Schwab <schwab@suse.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_103846_431386_0A03932B 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On May 29, 2019, at 3:31 AM, Andreas Schwab <schwab@suse.de> wrote:
> 
> On Mai 29 2019, Anup Patel <Anup.Patel@wdc.com> wrote:
> 
>> To achieve this, we need to ensure that users are able to boot kernel Image
>> and Image.gz without embedding it in OpenSBI/BBL.
> 
> Especially you need to ensure that you can load a separate initrd,
> without the need to encapsulate it further as it is currently required
> with u-Boot loading.
> 
> Andreas.
> 

This has been possible for at least 6 months now with the legacy HiFive-U-boot
that is integrated in https://github.com/sifive/freedom-u-sdk

Currently the build scripts generate a single hifiveu.fit image that U-boot
loads, however it is relatively straightforward to change the uEnv.txt file
to load BBL, the kernel, device tree, and initrd separately.

If some examples (and flashable binary images) demonstrating this would
be useful, let me know and I will make some updates.

What I could use some help on is how we should be using 
config_distro_bootcmd.h in u-boot to follow what other architectures
have done, or if that approach is needlessly complicating things that
we could do in a much cleaner way with a clean slate.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
