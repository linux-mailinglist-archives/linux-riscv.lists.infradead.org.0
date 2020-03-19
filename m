Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5E818BFB0
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 19:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8jSRRmePk+sgyVOpSOQ/tM3UVjLhi41A+D1AHcf217U=; b=HHGt431tCqHaoV7D/9CZgyZzU
	xcYA2oZ1Ix3ffz3/TNhAr9SeWL6bhfW3eK2/HXVcCAley4q6NjQcZAkibSLSqkf25eNKoIRJW4cyb
	qZi1hZn+SUFEFRDVlqJZRz/rv4KSuh0dJzE72t++rA2GvHUT4AZEjEz0udjQIim111CinV3B6/165
	MlwSUqaRpFvGl1dLDKPCXY43tmyeF2U/iPp3GskZpYXzC9zVVEyjZlnjw807+EuikuZfmnEcX69Zh
	xeC0OtJW805CbxCFKw28IvFnGbejsUKNr4XqCOj/JfgFkuTVN8RSEZ4vUTy3N8jwmcAbU3CHbohqr
	vAzuAc35w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF0J7-0005GG-FU; Thu, 19 Mar 2020 18:54:17 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF0J3-0005Fq-Jg
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 18:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584644067; x=1616180067;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=6zuNUAQGV6/23O6bQnZBpS8BNNGYSlVJCClZKFxuwVE=;
 b=VsMVyn5n+zqOP/Jx2T2hgvbNdVr+yog1hhSfimGvW35GbQLAVQ4ecA/Y
 +ZOdu0Bse9VoNH02vSJ9mlvSoYJ6YaYZ/+JbPTPk6vIpaEVQ/vHqqsQG5
 uKRrcnQbg97RdIOtA2/NOTViN+skuT+UQElj2NRkzZShHkHIo04Nu/VET
 6XlTQ0hZV74zB/6vrxL4OvKEL3wcSUC2bnTwCAXmSPTXMjaoHkMe/RMWi
 Z9JV5jSbgblf85RbqYX8qLDiHRSSbqKFyJPV0wn5M84VBf2X9ZjUHCFsj
 OIEPj4lFVzGyQzqu12TUNf5ix2QmlWmo6vUcKQ398UVKhBXNt2wlqoTXv w==;
IronPort-SDR: irFt3TDdg5QSnnfUb8QD47qV8J1DBrzbZdAIzaF/+Lg2z6Xr3iGqheEbBsrVGh+o/72sHLSWFY
 S5RXvhSMObOjUqDWzO8LtF/T5VGqFBzNgS2s8o7YOfWvJxJfVEXm6c8PwdwApMOG7zFQBfSxcL
 PbohDiUdJ0InXwAOWvI7ThfqmB97UULzx1smmgwdz+0XG9ikMW2NF273PCokGsEQnHjHoYHHs3
 C+ApMXWZ/fRRVAbdkB4/h+y03vnVMFe75rgj4bmY2PeVeHml6QDiVzPjdX51QTRadljgC10LXh
 Uvo=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574092800"; d="scan'208";a="235131729"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 20 Mar 2020 02:54:14 +0800
IronPort-SDR: OObozRXaTuu8PTQ+JP7T4b5qElMCBiMKZa+joMUPcOEUVnbZNmGcXfWUUU/GXRfC1Ihm45cyhv
 R8tfLME1sr/tl/imjAEMO/uO4VGuV7xPjSKOLgE47GC/cRy6Zu2/JPI7TWfnSHYpyzR0JwMGAG
 ae5v2wIrKVNy1rZz+X+jcPPYUC+zO4E9S3947o8QrJ6wMdBNThx/I2KzsRyz8lkZGdFn5KlnjQ
 0GSkFP7RcM7wNkJNGbT4YeAUIQYQnxdo6qtFtFZvxFzf+ryWK5r7XH+VC5zPjQhkX3aJ4ak1qj
 8kAGVSwIvi7k06UpCLv0Jja8
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 11:45:53 -0700
IronPort-SDR: 5Ioet6NlNa8Z1lxKkK9nV2ltc1Jb7viQ7mJqwGekJ9bqOepNSY1Lo1JaMfyVGc0/jORxm1p94V
 q8uqamPw6iL+LebTkkdUrGgbLfcnNwhUqstxaViKe8SjOPj8+vDb00RW7vTCN08cIctOLJ7ISz
 ba4Ayo6ZOQ6YKKzjHE4O2qj0HRSIogwQ7XyUrN/77p+2kcAkc3EKIu2FREGfbjNKkEMP6pQZyo
 SU5EztvWD3STXRH5r5TcB3UQYTqcKnH0pXcpWyJgjx78IdqLVyMCXIW0IXhH740t8w0NLA1TVh
 t9Q=
WDCIronportException: Internal
Received: from unknown (HELO redsun52) ([10.149.66.28])
 by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 11:54:04 -0700
Date: Thu, 19 Mar 2020 18:53:59 +0000 (GMT)
From: "Maciej W. Rozycki" <macro@wdc.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 1/3] RISC-V: Stop relying on GCC's register allocator's
 hueristics
In-Reply-To: <CAKwvOd=co2R+gVGQmCGWj8U4iV2djFHLDiQRFwhEW8M_V4AeHw@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2003191847080.24019@redsun52.ssa.fujisawa.hgst.com>
References: <20200227213450.87194-1-palmer@dabbelt.com>
 <20200227213450.87194-2-palmer@dabbelt.com>
 <CAKwvOd=co2R+gVGQmCGWj8U4iV2djFHLDiQRFwhEW8M_V4AeHw@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_115413_710794_DFC96B54 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-riscv@lists.infradead.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, kernel-team <kernel-team@android.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020, Nick Desaulniers wrote:

> Indeed, looks like the local register variables are very much intended
> to be used as inputs & outputs to extended inline assembly, which in
> these cases are not.
> Link: https://gcc.gnu.org/onlinedocs/gcc/Local-Register-Variables.html

 There is a further restriction on local register variables causing them 
to be possibly clobbered as a result of a function call, which may happen 
at unusual places due to inlining.

 For an example of this happening see a glibc bug recently reported here: 
<https://sourceware.org/bugzilla/show_bug.cgi?id=25523> and the cascade of 
fixes following, including one for the RISC-V target.

  Maciej

