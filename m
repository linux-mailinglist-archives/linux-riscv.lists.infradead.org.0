Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270737ED65
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 09:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTkVNRRosBymJ71KFhELwBwN7jpmxptLyxryvRX9fto=; b=sKHwT0JkSmYJNq
	JtjmsG1vsuFOgVseNkhXAf0g9Uu8qnoua4Yzok75sNb9/BQGhh1JAYm5Kxp8Z58/WlnPJRZUeD8Fc
	duemZtmD7K94uICKzRt97icxVxeAPxEfX+EuRnbZ+kgAGO2hRz2AwFTx55i03Rt3H2F2mr2duE4RD
	htjW9mf8NKKV3vQF+bnz4sjF/EskXvkNKzyuq8Iy2zutTSZzjxnvrcYnFcnAwpSl/C3Jm3SvZldkn
	tcmvotL5XxCtWfHnTXOj/NRpSAVcGWb3s7uqGgoDOsa1bpPJ2Oil+ribkFhmEgrarc3cGh95FYHZc
	ICiWm/5wxr1vu92n4TiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htRwF-00042Q-3k; Fri, 02 Aug 2019 07:25:19 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htRwC-000425-0B
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 07:25:17 +0000
Received: by mail-io1-xd36.google.com with SMTP id i10so36796913iol.13
 for <linux-riscv@lists.infradead.org>; Fri, 02 Aug 2019 00:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JXUHY8sA2e/7X8/qdtKxt5vSWNZ57dfVplPg1dkL/yM=;
 b=ZjJxtPQXZJ4bVcz8C5dp0dYcSBIQmMp7ILC04kwNo0WA4eUVhjWy+3qStwnh8RmDJN
 w/KjN+AXkb5hr8beXtHTELbktrSPHYObC8ZHLLneEvVDTsMXE2KNt/Gj7ql49L1nbauJ
 Hlvn4/DTejBr2tYMV86FFq9BzBp5K76+6O06xFkxoqfEsZNDsvQWiRN/tQU285hAtI/K
 Ljd35dLH7j3jVv9z6sktoNGL0X2DsgL/viJ3MFs4xF4H/CH+I+tJTzXBaioNUKnSeXoB
 lnanqnvngp9rHAIqam2Pz5FORoUnFlpnEvCnXVscjzMNrwJxr4cEJEKtThHvjwUs86lT
 SSog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JXUHY8sA2e/7X8/qdtKxt5vSWNZ57dfVplPg1dkL/yM=;
 b=rxh2zjdN/eDLoinO5vEqRdVMb7+d+6QaJ4T+z0ebTLW/yDRNzR1SenP2GeVXqEqcNW
 NxSVAGyuLJyYRR6ZOhNknOAS/wTyuCzpQBX2xpoFCJhsJAVvpx+uBxSHGITWPFyFD5i3
 /gURDDQBwoeau3hQeTiIPQyMEoZBo2VNwq4OMBUFCINGbzqneP47b6x2WRRtlezy1gLC
 1Q3X+Z5E/diesU0ftockxja5ti1gbBb+smYXaeLsSHl8ADRsrn6Cbw/wVxjF7HqofZ8k
 KNPyv9zTUQt5M5WUVYbf0jTYIbSkRPFMuyX2xO22NUG2D+vxDVtarZBXJP8rAF4TZ/Uo
 2Sew==
X-Gm-Message-State: APjAAAV2cHs5KLvTWSHRv7yj9NvbTIeAeJLykhSOa2HFMUHsPYwgSx5U
 CLfI6NyCnahpSlCLtUa6k1d5w9IbNGM=
X-Google-Smtp-Source: APXvYqyjDMI+V2/2jPwTzTA/RJhrIk3wBBdaKUQPJPa7p7UHoezlmveDSrPXxAEi+V23nCi7bWBAVQ==
X-Received: by 2002:a5d:8253:: with SMTP id n19mr22202574ioo.80.1564730714676; 
 Fri, 02 Aug 2019 00:25:14 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p10sm95171493iob.54.2019.08.02.00.25.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 00:25:14 -0700 (PDT)
Date: Fri, 2 Aug 2019 00:25:13 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: Random memory corruption with v5.2
In-Reply-To: <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908020022400.11222@viisi.sifive.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_002516_102112_75A18147 
X-CRM114-Status: UNSURE (   5.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d36 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


I was able to build glibc, and run most of the test suite, on v5.3-rc2 
with BBL, with no problems so far.  (The test suite is still running.)  
CPU at 1GHz.

Will try gcc in a few hours.  


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
